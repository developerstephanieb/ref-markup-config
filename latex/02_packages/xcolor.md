# Xcolor

This guide covers the `xcolor` package, which provides a comprehensive set of commands for using color in documents.

---

## Applying Color to Text

There are two primary ways to apply color to text.

- `\usepackage[<options>]{xcolor}`: Loads the `xcolor` package, enabling color commands and environments. Common `options` include predefined color sets such as `dvipsnames`, `svgnames`, and `x11names`. A full list of available colors is provided in the [xcolor package documentation](https://mirrors.mit.edu/CTAN/macros/latex/contrib/xcolor/xcolor.pdf#page=38).

- `\textcolor{<color>}{<text>}`: Colors a specific piece of text.

- `\color{<color>}`: Changes the color for all subsequent text within its scope.

```latex
\documentclass{article}
\usepackage[dvipsnames]{xcolor} 

\begin{document}

You can color a \textcolor{Red}{single word} using the command form.

{
  \color{Blue}
  This entire sentence will be blue.
}

\end{document}
```

---

## Defining Custom Colors

Custom colors can be defined using various color models.

- `\definecolor{<name>}{<model>}{<spec>}`: Creates a new color called `name`. The `model` specifies the color system, and the `spec` provides the corresponding comma-separated color values.

  | `model` | `spec`                                                                  |
  | ------- | ----------------------------------------------------------------------- |
  | `rgb`   | Comma-separated fractions from 0 to 1 for red, green, blue.             |
  | `RGB`   | Comma-separated integers from 0 to 255 for red, green, blue.            |
  | `cmyk`  | Comma-separated fractions from 0 to 1 for cyan, magenta, yellow, black. |
  | `gray`  | A single fraction from 0 to 1 for the gray level.                       |
  | `HTML`  | A six-digit [hex code](https://htmlcolorcodes.com).                     |

```latex
\documentclass{article}
\usepackage{xcolor}

% Define a custom color named "DarkGreen" using the RGB model
\definecolor{DarkGreen}{RGB}{0, 100, 0}

% Define a custom color named "MyOrange" using the HTML model (hex code)
\definecolor{MyOrange}{HTML}{FF5733}

\begin{document}

This text uses our \textcolor{DarkGreen}{custom dark green color}.

And this text uses a \textcolor{MyOrange}{custom orange color}.

\end{document}
```

---

## Mixing Colors

Colors can be mixed to create tints, shades, or entirely new colors.

- `<color>!<percentage>`: Creates a tint, where the `percentage` specifies the amount of `color` to be mixed with white.

- `<color1>!<percentage>!<color2>`: Creates a mix of two colors, where the `percentage` specifies the amount of `color1` to be mixed with `color2`.

```latex
\documentclass{article}
\usepackage[dvipsnames]{xcolor}

\begin{document}

This is a pink created by mixing red with white:
\textcolor{Red!50}{50\% red with white}.

This is a dark red created by mixing red with black:
\textcolor{Red!70!black}{70\% red with 30\% black}.

And this is a purple created by mixing blue and red:
\textcolor{Blue!50!Red}{50\% blue with 50\% red}.
\end{document}
```

---

## Colored Boxes

The `xcolor` package provides commands for creating boxes with colored backgrounds.

- `\colorbox{<color>}{<text>}`: Creates a box with a colored background that fits the text tightly.

- `\fcolorbox{<frame_color>}{<bg_color>}{<text>}`: Creates a framed box with a background color.

```latex
\documentclass{article}
\usepackage[dvipsnames]{xcolor}

\begin{document}

This is a \colorbox{Yellow}{highlighted text box}.

This is a \fcolorbox{Red}{Cyan}{framed box} with a different
background and frame color.
\end{document}
```

---

## Coloring Tables

The `xcolor` package can also be used to color table rows and columns. To enable this, you must load the package with the `[table]` option.

- `\usepackage[<table>]{xcolor}`: Loads the package with table coloring capabilities.

- `\rowcolors{<start_row>}{<odd_color>}{<even_color>}`: Colors alternating rows of a table, starting from `start_row`.

- `\cellcolor{<color>}`: Used inside a table cell to set its background color.

```latex
\documentclass{article}
\usepackage[table]{xcolor} % Load with the 'table' option

\begin{document}

% Color alternating rows starting from the second data row (row 2)
\rowcolors{2}{gray!25}{white}

\begin{tabular}{lcr}
    \hline
    \textbf{Item} & \textbf{Quantity}    & \textbf{Price} \\
    \hline
    Bread         & 1                    & \$3.50         \\
    Milk          & \cellcolor{red!25} 2 & \$2.99         \\ % Highlight a specific cell
    Cheese        & 1                    & \$4.50         \\
    Yogurt        & 1                    & \$1.50         \\
    \hline
\end{tabular}

\end{document}
```
