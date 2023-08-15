mkdir public
cp -r css images js public/
npm i -g geneasy
geneasy -t index.hbs -o public/index.html links.yml