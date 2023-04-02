# markdown-to-html

Bulk converts markdown (`.md`) files to HTML (`.html`) files and converts embedded markdown links to HTML links.

## Usage

1. Place `links-to-html.lua` and `md-to-html.sh` in the same directory as your markdown (`.md`) source documents.
2. Edit the files to meet your needs.
3. Run `md-to-html.sh`. HTML (`.html`) files will be outputted to a subdirectory named `html`.

## Converting HTML to an ebook

If you want to convert the resulting HTML collection to a single ebook, use `ebook-convert` from <https://github.com/kovidgoyal/calibre>.

Assuming HTML files are in the `html` directory and markdown files are in the present working directory:

```bash
$ cd html

$ ebook-convert index.html ebook.azw3 --title "$(head -1 ../index.md | cut -c 3-)"
```

This will create an ebook file named `ebook.azw3` and use the first line of the source `index.md` markdown file as the book's title.

# An alternative approach to converting markdown to HTML

1. Install the [Markdown All In One](https://github.com/yzhang-gh/vscode-markdown) VS Code/Codium extension
2. Open the Command Palette (Ctrl-Shift-P)
3. Select `Markdown All In One: Print documents to HTML (select a source folder)`
