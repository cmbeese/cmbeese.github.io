# Helper functions to load and use color palettes across R plots
# Source this file, then use load_palette(), show_palette(), scale_* helpers.

# Load a palette by name from YAML or JSON
load_palette <- function(name, file = "_data/palettes.yml") {
  if (grepl("\\.ya?ml$", file)) {
    if (!requireNamespace("yaml", quietly = TRUE)) stop("Please install the 'yaml' package: install.packages('yaml')")
    data <- yaml::read_yaml(file)
  } else {
    if (!requireNamespace("jsonlite", quietly = TRUE)) stop("Please install the 'jsonlite' package: install.packages('jsonlite')")
    data <- jsonlite::fromJSON(file)
  }
  pal <- data$palettes[[name]]
  if (is.null(pal)) stop(sprintf("Palette '%s' not found in %s", name, file))
  unlist(pal, use.names = FALSE)
}

# Quick visualization of a palette
show_palette <- function(cols, border = "grey80", labels = TRUE) {
  cols <- as.character(cols)
  n <- length(cols)
  op <- par(mar = c(1,1,1,1))
  on.exit(par(op))
  plot.new()
  plot.window(xlim = c(0, n), ylim = c(0, 1))
  for (i in seq_len(n)) {
    rect(i - 1, 0, i, 1, col = cols[i], border = border)
    if (labels) text(i - 0.5, 0.5, labels = cols[i], cex = 0.7, col = "black")
  }
  invisible(cols)
}

# ggplot2 helpers
scale_color_palette <- function(name, file = "_data/palettes.yml", ...) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Please install 'ggplot2'")
  ggplot2::scale_color_manual(values = load_palette(name, file), ...)
}

scale_fill_palette <- function(name, file = "_data/palettes.yml", ...) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Please install 'ggplot2'")
  ggplot2::scale_fill_manual(values = load_palette(name, file), ...)
}

# Example usage:
# cols <- load_palette("seventies_sunset_beach")
# show_palette(cols)
# ggplot(df, aes(x, y, color = group)) + geom_point() + scale_color_palette("seventies_sunset_beach")
