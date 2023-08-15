mkdir public
cp -r css images js submit about public
cp 404.html favicon.ico public
npm i -g geneasy
geneasy -t index.hbs -o public/index.html links.yml
npm i -g http-server
cd public && http-server -p 8000