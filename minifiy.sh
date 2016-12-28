#!/bin/bash
echo 'Remove dist/'
rm -rf dist

echo 'Create dist/'
mkdir -p dist

echo 'Concate CSS files: dist/hg.css'
cat css/normalize.css \
css/base.css \
css/grid.css \
css/typography.css \
css/form.css \
css/addon-header-footer.css \
css/addon-user.css \
> dist/hg.css

echo 'Minifiy CSS: dist/hg.css > dist/hg.min.css'
cat dist/hg.css | \
sed -r ':a; s%(.*)/\*.*\*/%\1%; ta; /\/\*/ !b; N; ba' \
| tr -d '\t' | tr -d '\n' | tr -s ' ' ' ' > dist/hg.min.css
