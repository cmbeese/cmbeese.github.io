# Personal Website — Quarto

This is a personal academic website built with Quarto, deployed via GitHub Pages.

## Project Structure

- `*.qmd` files: Quarto markdown source files for each page
- `_quarto.yml`: Main configuration file
- `style.css` & `styles-palette.css`: Custom styling
- `images/`: Image assets and icons
- `_data/`: Data files (publications, palettes)
- `docs/`: Generated output directory (published to GitHub Pages)

## Local Development

1. Install Quarto: <https://quarto.org/docs/get-started/>
2. Preview the site locally:

```powershell
quarto preview
```

3. Render the site:

```powershell
quarto render
```

## Deployment (GitHub Pages)

- Push changes to the `main` branch
- GitHub Actions will automatically render and deploy the site
- The site is published from the `docs/` directory

## Customization

- Edit `.qmd` files to update page content
- Modify `_quarto.yml` to change site structure or theme
- Update `style.css` and `styles-palette.css` for custom styling
- See `HOW-TO-CHANGE-FISH-SHAPES.txt` for fish button customization

For more details, see [Quarto documentation](https://quarto.org/docs/guide/).
