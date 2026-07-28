#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
skill="$repo_root/skills/frontend-design/SKILL.md"

if [[ ! -f "$skill" ]]; then
  echo "FAIL: missing skills/frontend-design/SKILL.md" >&2
  exit 1
fi

grep -Fq -- "name: frontend-design" "$skill"
grep -Fq -- "Preserve Existing Design" "$skill"
grep -Fq -- "Originating a Design" "$skill"
grep -Fq -- "Visual Review" "$skill"
grep -Fq -- "Motion and Interaction" "$skill"
grep -Fq -- "Working Loop" "$skill"
grep -Fq -- "One request may combine these modes." "$skill"
grep -Fq -- "supplied visual reference" "$skill"
grep -Fq -- "any existing rendered result" "$skill"
grep -Fq -- "does not provide enough context" "$skill"
grep -Fq -- "low-risk product-interface defaults" "$skill"
grep -Fq -- "marketing and editorial surfaces may use stronger art direction" "$skill"
grep -Fq -- "Originality and Art Direction" "$skill"
grep -Fq -- "Seek a visual idea that belongs to the product." "$skill"
grep -Fq -- "Use the product's real content and behavior as design material." "$skill"
grep -Fq -- "interchangeable hero sections, card grids, gradient backgrounds, floating glass surfaces, oversized headings, decorative pills, or unnecessary dashboard tiles" "$skill"
grep -Fq -- "Extract principles from references and reinterpret them" "$skill"
grep -Fq -- "could transfer unchanged to an unrelated interface" "$skill"
grep -Fq -- "Do not penalize appropriate convention in established or utilitarian product UI." "$skill"
grep -Fq -- "choose the strongest contextually justified direction and implement it." "$skill"
grep -Fq -- "available container space" "$skill"
grep -Fq -- "accessibility contrast requirements as a floor" "$skill"
grep -Fq -- "do not manufacture unused variants" "$skill"
grep -Fq -- "visible issue, its impact, its precise location, and the smallest credible fix" "$skill"
grep -Fq -- "When the interface cannot be rendered" "$skill"
grep -Fq -- "Compare the result against the original surface, supplied reference, or nearby established patterns" "$skill"
grep -Fq -- "Check browser zoom, text enlargement, or compact-density behavior when the affected interface is sensitive to them." "$skill"
grep -Fq -- "Prefer native semantic elements" "$skill"
grep -Fq -- "Override browser and platform defaults only when the replacement remains complete, accessible, and consistent with the product." "$skill"
grep -Fq -- "Informed by and independently adapted from:" "$skill"
grep -Fq -- "Do not prescribe a frontend framework" "$skill"
grep -Fq -- "Do not present style tiles, moodboards, or multiple prototype variants as an approval step unless the user requests them." "$skill"
grep -Fq -- "Internal exploration should remain lightweight and should not delay implementation." "$skill"
if grep -Fq -- "Apple-design skills" "$skill"; then
  echo "FAIL: platform-specific source label remains in frontend design skill" >&2
  exit 1
fi

line_count="$(wc -l < "$skill" | tr -d ' ')"
if (( line_count > 300 )); then
  echo "FAIL: frontend-design/SKILL.md exceeds 300 lines ($line_count)" >&2
  exit 1
fi

echo "PASS: frontend design skill policy"
