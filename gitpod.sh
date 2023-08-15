mkdir public
cp -r css images js public
cp favicon.ico public
npm i -g geneasy
geneasy -t index.hbs -o public/index.html links.yml
cp -r public/* ./
npm i -g http-server
cd public && http-server -p 8000