# Hydejack Setup Instructions

## Your Hydejack site has been configured!

### What's been set up:

1. **Jekyll configuration** (`_config.yml`)
   - Hydejack theme configured
   - Orange and blue color scheme applied
   - Navigation menu set up

2. **Custom styling** 
   - Your original colors preserved in `_sass/my-style.scss`
   - Custom CSS in `assets/css/main.scss`

3. **Page structure**
   - All pages converted to Markdown in `_pages/` folder
   - Home page (index.md)
   - About, CV, Publications, Projects, Gallery, MizerReef pages

4. **Directories created**
   - `_posts/` - for blog posts
   - `_projects/` - for detailed project pages
   - `_data/` - for structured data
   - `_sass/` - for Sass styling

### Next Steps:

1. **Install Jekyll and dependencies:**
   ```bash
   gem install bundler jekyll
   bundle install
   ```

2. **Build and serve locally:**
   ```bash
   bundle exec jekyll serve
   ```
   Then visit `http://localhost:4000`

3. **Update your email and social links** in `_config.yml`

4. **Add your CV PDF** and update the path in `_pages/cv.md`

5. **Set up BibTeX for publications** (see below)

6. **Add gallery images** to `images/gallery/` folder

### BibTeX Publications Setup:

To automatically generate publications from your `my-pubs.bib` file, you can:

1. Add `jekyll-scholar` gem to your Gemfile
2. Configure it in `_config.yml`
3. Or manually parse the .bib file to create a YAML data file

### Color Variables:

Your colors are preserved:
- **Blues:** `--blue-main: #016FA0`, `--blue-alt: #00769E`
- **Oranges:** `--accent-1: #FE3E00`, `--accent-2: #FDB36A`, `--accent-3: #FF751C`

### Old HTML files:

Your original HTML files are still in the root directory. Once you verify the Jekyll site works, you can:
- Move them to an `_archive/` folder
- Or delete them

### Deployment to GitHub Pages:

GitHub Pages will automatically build your Jekyll site. Just push to your repository!

### Questions?

Refer to:
- [Hydejack Documentation](https://hydejack.com/docs/)
- [Jekyll Documentation](https://jekyllrb.com/docs/)
