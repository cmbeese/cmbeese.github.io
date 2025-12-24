source "https://rubygems.org"

# Use the GitHub Pages gem for compatibility with the Pages build environment.
gem "github-pages", group: :jekyll_plugins

# For local `jekyll serve` on Ruby >= 3.0
gem "webrick", "~> 1.8"

# Windows and JRuby do not include zoneinfo files, so bundle the tzinfo-data gem
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1", :platforms => [:mingw, :x64_mingw, :mswin]
