mkdir html
for i in *.md ; do echo "$i" && pandoc -s $i -t html -o html/$i.html --lua-filter=links-to-html.lua --metadata title="$(head -1 $i)"; done
cd html
for file in *.md.html ; do   mv "$file" "${file%.md.html}.html" ;done