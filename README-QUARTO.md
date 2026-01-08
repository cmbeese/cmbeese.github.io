# Quarto Website

This repository now uses Quarto to render a static personal website.

## Local Preview

1. Install Quarto: https://quarto.org/docs/get-started/
2. Render the site:

```bash
quarto render
```

3. Preview locally:

```bash
quarto preview
```

## GitHub Pages

The site is configured to output to the `docs/` folder.

- In the repository Settings → Pages, set **Source** to `Deploy from a branch`, and choose **Branch** `main` and **Folder** `/docs`.
- Push changes after rendering; GitHub Pages will serve the HTML from `docs/`.

## Content Structure

- `_quarto.yml`: site configuration
- `*.qmd`: pages (index, about, cv, publications, projects, gallery, mizerreef)
- `style.css`: custom styles retained
- `images/`, `assets/`, `background/`, `plots/`, `scripts/`: static assets copied to `docs/`
- `my-pubs.bib`: bibliography file for Publications

## Notes

- Customize the theme in `_quarto.yml` (Bootswatch `flatly` for light, `superhero` for dark). You can override colors in `style.css` or SCSS.
- The Publications page uses `nocite: @*` to show all entries from `my-pubs.bib`. Add or update entries to change the list.
