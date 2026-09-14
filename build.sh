#!/usr/bin/env bash
# Rebuild every CV from the shared sources. Requires pdflatex (TeX Live).
set -euo pipefail
CV_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
for variant in english german dfg; do
  (
    cd "$CV_ROOT/$variant"
    for pass in 1 2; do
      pdflatex -interaction=nonstopmode -halt-on-error CV_AliKhalifa.tex > build.log 2>&1 || { cat build.log; exit 1; }
    done
    if grep -q 'Overfull' CV_AliKhalifa.log; then
      echo "Layout warning in $variant; inspect CV_AliKhalifa.log" >&2
      exit 1
    fi
    echo "Built $variant/CV_AliKhalifa.pdf"
  )
done
