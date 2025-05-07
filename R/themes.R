#' brutalviz Themes for ggplot2
#'
#' Loads Google Fonts and defines styled themes for ggplot2 plots
#' @name brutalviz
#' @docType package

showtext_auto(enable = TRUE)
showtext_opts(dpi = 300)

font_add_google("Jost", "Jost")
font_add_google("Bebas Neue", "Bebas Neue")
font_add_google("Quicksand", "quicksand")
font_add_google("Fira Sans", "firasans")
font_add_google("Baloo 2", "baloo")

#' Neo-Brutalist ggplot2 Theme
#' @export
theme_nice <- function(base_size = 14, base_family = "Jost") {
  # Start with minimal theme
  theme_minimal(base_size = base_size, base_family = base_family) %+replace%
    theme(
      # Bold, thick text elements
      text = element_text(family = base_family, size = base_size, color = "#000000", lineheight = 1.1),
      plot.title = element_text(family = "Bebas Neue", size = rel(1.8), hjust = 0, margin = margin(b = 20)),
      plot.subtitle = element_text(size = rel(1.1), hjust = 0, margin = margin(b = 20)),

      # Bold axis titles and text
      axis.title = element_text(family = base_family, size = rel(1), face = "bold"),
      axis.title.y = element_text(angle = 90, margin = margin(r = 10)),
      axis.title.x = element_text(margin = margin(t = 10)),
      axis.text = element_text(size = rel(0.9), color = "#000000"),

      # Thick, black axis lines
      axis.line = element_line(color = "#000000", size = 1.5),

      # Black panel border with thick lines
      panel.border = element_rect(color = "#000000", fill = NA, size = 3),
      panel.grid.major = element_line(color = "gray90", size = 0.5, linetype = "solid"),
      panel.grid.minor = element_blank(),
      panel.background = element_rect(fill = "#ffffff"),

      # Legend styling
      legend.title = element_text(face = "bold"),
      legend.background = element_rect(fill = "#ffffff", color = "#000000", size = 1),
      legend.key = element_rect(fill = "#ffffff", color = NA),

      # Plot background
      plot.background = element_rect(fill = "#ffffff", color = NA),
      plot.margin = margin(20, 20, 20, 20),

      # Facets
      strip.background = element_rect(fill = "#000000"),
      strip.text = element_text(color = "#ffffff", face = "bold", size = rel(1.1), margin = margin(10, 10, 10, 10))
    )
}


#' Pastel Minimal Theme
#' @export
theme_pastel_minimal <- function(base_size = 14) {
  theme_light(base_size = base_size, base_family = "quicksand") %+replace%
    theme(
      panel.background = element_rect(fill = "#fffdf9", colour = NA),
      plot.background = element_rect(fill = "#fffdf9", colour = NA),
      panel.grid.major = element_line(color = "#eaeaea"),
      axis.title = element_text(color = "#5f5f5f"),
      axis.text = element_text(color = "#5f5f5f"),
      plot.title = element_text(face = "bold", size = base_size * 1.2),
      plot.subtitle = element_text(size = base_size, color = "#888888"),
      legend.background = element_blank(),
      legend.key = element_blank()
    )
}

#' Dark Dashboard Theme
#' @export
theme_dark_dashboard <- function(base_size = 14) {
  theme_minimal(base_size = base_size, base_family = "firasans") %+replace%
    theme(
      panel.background = element_rect(fill = "#1e1e1e", colour = NA),
      plot.background = element_rect(fill = "#1e1e1e", colour = NA),
      panel.grid.major = element_line(color = "#333333"),
      axis.text = element_text(color = "#cccccc"),
      axis.title = element_text(color = "#eeeeee"),
      plot.title = element_text(color = "white", face = "bold", size = base_size * 1.2),
      plot.subtitle = element_text(color = "#cccccc", size = base_size),
      legend.background = element_rect(fill = "#1e1e1e"),
      legend.key = element_rect(fill = "#1e1e1e"),
      strip.background = element_rect(fill = "#333333"),
      strip.text = element_text(color = "#ffffff", face = "bold")
    )
}

#' Playful Flat Theme
#' @export
theme_flat_fun <- function(base_size = 14) {
  theme_minimal(base_size = base_size, base_family = "baloo") %+replace%
    theme(
      panel.grid.major = element_line(color = "#dddddd"),
      panel.background = element_rect(fill = "#f0f9ff"),
      plot.background = element_rect(fill = "#f0f9ff"),
      plot.title = element_text(face = "bold", size = base_size * 1.3, color = "#0d3b66"),
      plot.subtitle = element_text(color = "#3d5a80"),
      axis.title = element_text(color = "#3d5a80"),
      axis.text = element_text(color = "#293241"),
      strip.background = element_rect(fill = "#ee6c4d"),
      strip.text = element_text(color = "white", face = "bold"),
      legend.position = "right"
    )
}
