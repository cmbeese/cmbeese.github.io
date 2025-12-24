# Personal Website — Jekyll + Hydejack

This site uses the Hydejack theme via Jekyll's `remote_theme`, configured to be compatible with GitHub Pages.

## Deployment (GitHub Pages)
- Push changes to the `main` branch. GitHub Pages will build and publish automatically.
- Ensure `_config.yml` contains `remote_theme: hydecorp/hydejack@v9` and does NOT set `theme:`.
- `Gemfile` should use `github-pages` (no `jekyll-theme-hydejack`).

## Local Development (Windows)
1. Install Ruby and Bundler.
2. Install dependencies:

```powershell
bundle install
```

3. Run the site locally:

```powershell
bundle exec jekyll serve
```

- Open http://localhost:4000 to view the site.

## Troubleshooting
- Build error: "The jekyll-theme-hydejack theme could not be found" → remove `theme:` from `_config.yml`, keep `remote_theme`, and use `github-pages` in `Gemfile`.
- If `jekyll serve` fails on Ruby ≥ 3.0, ensure `webrick` is installed (already included in `Gemfile`).

For more details, see Jekyll and Hydejack documentation.