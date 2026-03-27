# Haozhan (Tom) Tang - Personal Website

Personal academic website built with [Jekyll](https://jekyllrb.com/), based on the [al-folio](https://github.com/alshedivat/al-folio) theme.

Live at: [tomtango.net](tomtango.net)

## Prerequisites

- [rbenv](https://github.com/rbenv/rbenv) with Ruby 3.3.6
- [Bundler](https://bundler.io/)
- [ImageMagick](https://imagemagick.org/) (for responsive image generation)

### macOS

```bash
brew install rbenv ruby-build imagemagick
rbenv install 3.3.6
rbenv local 3.3.6
gem install bundler
```

## Install

```bash
bundle install
```

## Run Locally

A convenience script is provided that sets up rbenv and serves on port 11868:

```bash
./serve.sh
```

Or run manually:

```bash
bundle exec jekyll serve --port 11868
```

Then open [http://localhost:11868](http://localhost:11868).

## Project Structure

```
_bibliography/   # BibTeX files (papers.bib)
_data/           # YAML data (co-authors, repositories, venues)
_includes/       # Liquid template partials
_layouts/        # Page layout templates
_news/           # News/announcement items
_pages/          # Site pages (about, publications & projects, blog)
_projects/       # Project collection entries
_plugins/        # Custom Jekyll plugins
_sass/           # SCSS stylesheets
assets/          # Static assets (CSS, JS, images, PDFs, videos)
```

## Adding Content

### New publication

1. Add a BibTeX entry to `_bibliography/papers.bib` with the `year` field
2. Optionally add a preview image to `assets/img/publication_preview/`

Publications are auto-grouped by year on the Publications & Projects page.

### New project

1. Create a markdown file in `_projects/` with frontmatter including `year` and `category`
2. Add project images to `assets/img/projects/`

Projects appear automatically under their year on the Publications & Projects page.

## Acknowledgements

This website is built on top of the [al-folio](https://github.com/alshedivat/al-folio) theme, created by [Maruan Al-Shedivat](https://github.com/alshedivat) and contributors. al-folio was originally based on the [\*folio theme](https://github.com/bogoli/-folio) by [Lia Bogoev](https://liabogoev.com).

## License

The theme is available as open source under the terms of the [MIT License](LICENSE).

Copyright (c) 2022 Maruan Al-Shedivat.
