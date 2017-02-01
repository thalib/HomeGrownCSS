#!/bin/bash
echo 'Remove dist/'
rm -rf dist

echo 'Create dist/'
mkdir -p dist

echo 'Concate CSS files: dist/hg.css'
cat css/00_normalize.css \
css/01_base.css \
css/02_grid.css \
css/03_typography.css \
css/04_form.css \
css/05_header-footer.css \
css/06_misc.css \
> dist/hg.css

echo 'Minifiy CSS: dist/hg.css > dist/hg.min.css'
cat dist/hg.css | \
sed -r ':a; s%(.*)/\*.*\*/%\1%; ta; /\/\*/ !b; N; ba' \
| tr -d '\t' | tr -d '\n' | tr -s ' ' ' ' > dist/hg.min.css
