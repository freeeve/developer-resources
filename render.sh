for file in `find . -name "*.adoc" -not -name README.adoc`; do
   echo "Rendering $file"
   asciidoctor -a source-highlighter=codemirror -T asciidoc $file -o ${file%/*}/index.html
done

git add .
git commit -m "content-update for github-pages"
git push origin gh-pages
