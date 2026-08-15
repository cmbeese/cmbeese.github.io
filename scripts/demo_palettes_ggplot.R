# Quick ggplot demo that shows ALL palettes as simple swatch plots
# Usage:
# install.packages(c("yaml", "ggplot2"))
# source("scripts/demo_palettes_ggplot.R")
# Then run demo_palettes()

suppressPackageStartupMessages({
  if (!requireNamespace("yaml", quietly = TRUE)) stop("Install 'yaml' first: install.packages('yaml')")
  if (!requireNamespace("ggplot2", quietly = TRUE)) stop("Install 'ggplot2' first: install.packages('ggplot2')")
})

get_palettes <- function(file = "_data/palettes.yml") {
  data <- yaml::read_yaml(file)
  data$palettes
}

make_swatch_plot <- function(name, cols) {
  # Create a row of tiles, one per color
  df <- data.frame(
    idx = seq_along(cols),
    y = 1,
    grp = factor(seq_along(cols)),
    hex = cols
  )
  ggplot2::ggplot(df, ggplot2::aes(x = idx, y = y, fill = grp)) +
    ggplot2::geom_tile(width = 1, height = 1) +
    ggplot2::scale_fill_manual(values = cols) +
    ggplot2::scale_x_continuous(expand = c(0, 0)) +
    ggplot2::scale_y_continuous(expand = c(0, 0)) +
    ggplot2::labs(title = name, x = NULL, y = NULL) +
    ggplot2::theme_void(base_size = 12) +
    ggplot2::theme(
      plot.title = ggplot2::element_text(hjust = 0.5, face = "bold")
    )
}

# Save all palettes as individual PNGs and a multi-page PDF
demo_palettes <- function(out_dir = "plots", file_yaml = "_data/palettes.yml") {
  palettes <- get_palettes(file_yaml)
  if (!dir.exists(out_dir)) dir.create(out_dir, recursive = TRUE)

  # Save a multi-page PDF
  pdf_file <- file.path(out_dir, "palettes_demo.pdf")
  grDevices::pdf(pdf_file, width = 8, height = 2)
  on.exit(grDevices::dev.off(), add = TRUE)

  for (nm in names(palettes)) {
    cols <- unlist(palettes[[nm]], use.names = FALSE)
    p <- make_swatch_plot(nm, cols)
    print(p)
    # Also save per-palette PNG
    png_file <- file.path(out_dir, paste0("palette_", nm, ".png"))
    ggplot2::ggsave(png_file, p, width = 8, height = 2, dpi = 150)
  }

  message("Saved: ", normalizePath(pdf_file))
  message("And individual PNGs in ", normalizePath(out_dir))
}

# Helper: try to find repo root based on this script location
get_script_root <- function() {
  of <- NULL
  for (frm in sys.frames()) {
    if (!is.null(frm$ofile)) { of <- frm$ofile; break }
  }
  if (!is.null(of)) {
    return(normalizePath(file.path(dirname(of), "..")))
  }
  # Fallback to current working directory
  normalizePath(getwd())
}

# Auto-run demo when sourced interactively
try({
  if (interactive()) {
    root <- get_script_root()
    yaml_path <- file.path(root, "_data", "palettes.yml")
    out_dir <- file.path(root, "plots")
    if (!file.exists(yaml_path)) {
      stop(sprintf("Palettes YAML not found at %s. Set your working directory to the repo root or adjust the path.", yaml_path))
    }
    demo_palettes(out_dir = out_dir, file_yaml = yaml_path)
  }
}, silent = TRUE)
