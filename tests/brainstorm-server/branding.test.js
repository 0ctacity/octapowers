/** Tests for the visual companion's local Octapowers branding. */

const { spawn } = require('child_process');
const http = require('http');
const fs = require('fs');
const path = require('path');
const assert = require('assert');

const REPO_ROOT = path.join(__dirname, '../..');
const SERVER_PATH = path.join(REPO_ROOT, 'skills/brainstorming/scripts/server.cjs');
const PACKAGE_VERSION = JSON.parse(fs.readFileSync(path.join(REPO_ROOT, 'package.json'), 'utf-8')).version;
const TOKEN = 'testtoken-branding-0123456789abcdef';

function sleep(ms) { return new Promise(resolve => setTimeout(resolve, ms)); }
function cleanup(dir) { fs.rmSync(dir, { recursive: true, force: true }); }

function startServer({ port, dir, serverPath = SERVER_PATH }) {
  cleanup(dir);
  return spawn('node', [serverPath], {
    env: { ...process.env, BRAINSTORM_PORT: String(port), BRAINSTORM_DIR: dir, BRAINSTORM_TOKEN: TOKEN }
  });
}

function waitForServer(server) {
  let stderr = '';
  return new Promise((resolve, reject) => {
    const timeout = setTimeout(() => reject(new Error(`Server did not start. stderr: ${stderr}`)), 5000);
    server.stdout.on('data', data => {
      if (data.toString().includes('server-started')) {
        clearTimeout(timeout);
        resolve();
      }
    });
    server.stderr.on('data', data => { stderr += data.toString(); });
    server.on('error', reject);
  });
}

function fetchHtml(port) {
  return new Promise((resolve, reject) => {
    const headers = { Cookie: `brainstorm-key-${port}=${TOKEN}` };
    http.get(`http://localhost:${port}/`, { headers }, res => {
      let body = '';
      res.on('data', chunk => { body += chunk; });
      res.on('end', () => resolve(body));
    }).on('error', reject);
  });
}

function writeFragment(dir) {
  const contentDir = path.join(dir, 'content');
  fs.mkdirSync(contentDir, { recursive: true });
  fs.writeFileSync(path.join(contentDir, 'screen.html'), '<h2>Pick a layout</h2>');
}

function createPackagedServerFixture(version) {
  const root = fs.mkdtempSync('/tmp/octapowers-packaged-server-');
  const scriptDir = path.join(root, 'skills/brainstorming/scripts');
  fs.cpSync(path.join(REPO_ROOT, 'skills/brainstorming/scripts'), scriptDir, { recursive: true });
  fs.mkdirSync(path.join(root, '.codex-plugin'), { recursive: true });
  fs.writeFileSync(path.join(root, '.codex-plugin/plugin.json'), JSON.stringify({ name: 'octapowers', version }));
  return { root, serverPath: path.join(scriptDir, 'server.cjs') };
}

async function withServer(options, fn) {
  const server = startServer(options);
  try {
    await waitForServer(server);
    await fn();
  } finally {
    if (server.exitCode === null && server.signalCode === null) {
      server.kill();
      await new Promise(resolve => server.once('exit', resolve));
    }
    cleanup(options.dir);
  }
}

function assertOctapowersBranding(html, version) {
  assert(html.includes(`Octapowers v${version}`), 'branding should include the Octapowers version');
  assert(!/superpowers/i.test(html), 'rendered branding must not reference Superpowers');
  assert(!html.includes('primeradiant.com'), 'rendered branding must not load the upstream remote image');
  assert(!html.includes('class="brand-logo"'), 'rendered branding should not include the upstream logo');
}

async function main() {
  console.log('\n--- Visual Companion Branding ---');
  let passed = 0;

  const run = async (name, fn) => {
    await fn();
    console.log(`  PASS: ${name}`);
    passed++;
  };

  await run('framed screens render local Octapowers branding', async () => {
    const port = 3451;
    const dir = '/tmp/brainstorm-branding-default';
    await withServer({ port, dir }, async () => {
      writeFragment(dir);
      await sleep(200);
      assertOctapowersBranding(await fetchHtml(port), PACKAGE_VERSION);
    });
  });

  await run('waiting screen renders local Octapowers branding', async () => {
    const port = 3452;
    const dir = '/tmp/brainstorm-branding-waiting';
    await withServer({ port, dir }, async () => {
      const html = await fetchHtml(port);
      assert(html.includes('Waiting for the agent'), 'waiting page should still render');
      assertOctapowersBranding(html, PACKAGE_VERSION);
    });
  });

  await run('packaged plugin reads version from its Codex manifest', async () => {
    const port = 3453;
    const dir = '/tmp/brainstorm-branding-packaged';
    const fixture = createPackagedServerFixture('7.8.9');
    try {
      await withServer({ port, dir, serverPath: fixture.serverPath }, async () => {
        writeFragment(dir);
        await sleep(200);
        assertOctapowersBranding(await fetchHtml(port), '7.8.9');
      });
    } finally {
      cleanup(fixture.root);
    }
  });

  console.log(`\n--- Results: ${passed} passed, 0 failed ---`);
}

main().catch(error => {
  console.error('Test failed:', error);
  process.exit(1);
});
