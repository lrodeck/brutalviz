# 🎨 brutalviz

**brutalviz** is a collection of bold and beautiful `ggplot2` themes that bring striking aesthetics and professional polish to your data visualizations. With integrated support for **Google Fonts** via `showtext`, each theme is designed for clarity, impact, and reproducibility across platforms and output formats.

![Preview](man/figures/brutalviz-banner.png) <!-- Optional: add a banner image -->

---

## ✨ Features

* 🧱 **Neo-Brutalist** theme — sharp, gridded, typographic emphasis with 'Anton' font
* 🌅 **Pastel Minimal** — soft, clean elegance with 'Quicksand'
* 🌌 **Dark Dashboard** — dark mode for dashboards and reports using 'Fira Sans'
* 🌻 **Flat Fun** — playful, modern, colorful visuals with 'Baloo 2'
* 💡 **Google Fonts** are loaded automatically with `showtext`

All themes are built for **ggplot2**, compatible with static and interactive output, and ideal for dashboards, presentations, and publishing.

---

## 📦 Installation

```r
# install.packages("devtools")  # if needed
devtools::install_github("yourusername/brutalviz")
```

---

## 🔧 Usage

```r
library(ggplot2)
library(brutalviz)

ggplot(mtcars, aes(wt, mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  labs(title = "Neo-Brutalist Style") +
  theme_neo_brutalist()
```

You can swap in any of the following:

```r
theme_pastel_minimal()
theme_dark_dashboard()
theme_flat_fun()
```

---

## 📀 Fonts & Rendering

This package uses [`showtext`](https://yixuan.cos.name/showtext/) to automatically load and embed Google Fonts:

* `Anton` (Neo-Brutalist)
* `Quicksand` (Pastel)
* `Fira Sans` (Dark)
* `Baloo 2` (Fun)

Plots render crisply in RMarkdown, Quarto, PDFs, and PNGs without local font installations.

---

## 📁 Project Structure

```
brutalviz/
├── R/                # Theme functions
├── man/              # Auto-generated documentation
├── DESCRIPTION       # Package metadata
├── NAMESPACE         # Export declarations
├── README.md         # You're reading it
```

---

## ✅ To Do

* [ ] Add theme-specific color palettes
* [ ] Create Quarto demo gallery
* [ ] Publish pkgdown site

---

## 🤪 Contributing

Contributions welcome! Feel free to fork and submit a pull request if you have new theme ideas or improvements.

---

## 📜 License

MIT License © Lasse, 2025
Use freely in personal, academic, or commercial projects.
