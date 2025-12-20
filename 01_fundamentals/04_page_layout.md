# 04: Page Layout

Page layout determines the physical dimensions of the document, including paper size, orientation, and margins. While the document class sets defaults, precise control over these elements is achieved through dedicated packages.

---

## Page Dimensions (the `geometry` package)

The `geometry` package provides a unified interface for defining page dimensions. While some page layout `options` can be set in `\documentclass`, it’s best practice to define all dimensions with `geometry`.

- `\usepackage[<options>]{geometry}`: Enables control over margins, paper size, orientation, and other page dimensions.
  
  | `<options>`                       | Description                                                         |
  | :-------------------------------- | ------------------------------------------------------------------- |
  | `a4paper`, `letterpaper`          | Sets the paper size.                                                |
  | `landscape`                       | Sets the page orientation to landscape.                             |
  | `oneside`, `twoside`              | Sets the layout for single-sided or double-sided printing.          |
  | `margin=<length>`                 | Sets all four margins (top, bottom, left, right) to the same value. |
  | `hmargin=<length>`                | Sets both the left and right margins to the same value.             |
  | `vmargin=<length>`                | Sets both the top and bottom margins to the same value.             |
  | `left=<length>`, `right=<length>` | Sets the left and right margins individually.                       |
  | `top=<length>`, `bottom=<length>` | Sets the top and bottom margins individually.                       |
  | `bindingoffset=<length>`          | Adds extra space to the inner margin for binding.                   |
  | `scale=<factor>`                  | Scales the text area relative to the paper size.                    |
  | `headheight=<length>`             | Sets the vertical height reserved for the header.                   |
  | `headsep=<length>`                | Sets the space between the header and the text body.                |
  | `includehead`, `includefoot`      | Includes the header and/or footer as part of the text height.       |
  | `marginparwidth=<length>`         | Sets the width of the margin note area.                             |
  | `showframe`                       | Draws visible frames around the layout areas for debugging.         |

```latex
\documentclass{article}
\usepackage[a4paper, margin=1in]{geometry}

\begin{document}

\section{Introduction}

This page has been formatted using the \texttt{geometry} package.
The paper size is A4, and the margins are all set to one inch.

\end{document}
```

---

## Headers and Footers

Recurring content at the top and bottom of pages, such as page numbers and section titles, is managed through page styles.

- `\pagestyle{<style>}`: Sets the global page style.
  
  | `<style>`    | Description                                                                                                                                                                                                     |
  | ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
  | `plain`      | Prints the page number in the footer (default for `article`).                                                                                                                                                   |
  | `headings`   | Prints the current chapter/section title and page number in the header.                                                                                                                                         |
  | `empty`      | Creates empty headers and footers (no page numbers).                                                                                                                                                            |
  | `myheadings` | Allows for custom header content. Use `\markright{<right_text>}` <br>for  `oneside` documents or `\markboth{<left_text>}{<right_text>}` <br>for `twoside` documents to set different headers on even/odd pages. |

- `\thispagestyle{<style>}`: Overrides the global style for the current page only.

- `\pagenumbering{<num_style>}`: Sets the page numbering style and resets the page counter to 1.
  
  | `<num_style>` | Description                                    |
  | ------------- | ---------------------------------------------- |
  | `arabic`      | Arabic numerals (`1`, `2`, `3`...)             |
  | `roman`       | Lowercase Roman numerals (`i`, `ii`, `iii`...) |
  | `Roman`       | Uppercase Roman numerals (`I`, `II`, `III`...) |
  | `alph`        | Lowercase letters (`a`, `b`, `c`...)           |
  | `Alph`        | Uppercase letters (`A`, `B`, `C`...)           |

- **Dynamic Macros**: Prints dynamic document information like the current page number (`\thepage`), section number (`\thesection`), chapter (`\leftmark`), and section heading (`\rightmark`).

```latex
\documentclass[twoside]{article}

\pagestyle{myheadings}

% Set the header text for the left (even) and right (odd) pages
\markboth{Even Page Header}{Odd Page Header}

\begin{document}

\section{First Page (Odd)}
This is the first page of the document (page 1).
The header on this page will display ''Odd Page Header``.

\newpage

\section{Second Page (Even)}
This is the second page (page 2).
The header on this page will display ''Even Page Header``.

\end{document}
```

---

## Custom Headers and Footers (the `fancyhdr` package)

For detailed control over headers and footers, including dividing them into left, center, and right fields, the `fancyhdr` package is required.

- `\usepackage{fancyhdr}`: Provides commands for custom header and footer design.

- `\pagestyle{fancy}`: Activates the custom header/footer settings.

- `\lhead{<text>}`, `\chead{<text>}`, `\rhead{<text>}`: Set the left, center, and right header fields.

- `\lfoot{<text>}`, `\cfoot{<text>}`, `\rfoot{<text>}`: Set the left, center, and right footer fields.

- `\renewcommand{\headrulewidth}{<length>}`, `\renewcommand{\footrulewidth}{<length>}`: Sets the thickness of the line under the header or above the footer. Use `0pt` for no line.

- `\fancyhead[<selectors>]{<text>}`, `\fancyfoot[<selectors>]{<text>}`: Sets the header/footer content based on page type (even/odd) in `twoside` documents.

  | `<selectors>` | Description                                |
  | ------------- | ------------------------------------------ |
  | `L`, `C`, `R` | Left, Center, Right field.                 |
  | `E`, `O`      | Even, Odd pages (for `twoside` documents). |

- `\fancypagestyle{<name>}{<commands>}`: Defines a named preset for custom page styles.

- `\fancyhf{}`: Clears all header and footer fields.

```latex
\documentclass{article}
\usepackage[letterpaper, margin=1in, headheight=15pt]{geometry}
\usepackage{fancyhdr}

% Define a global style
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

% Define a new, custom style called 'firstpage'
\fancypagestyle{firstpage}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \fancyfoot[C]{First Page Footer}
}

\begin{document}

\thispagestyle{firstpage}

\section*{Title Page}
The first page uses the custom style.

\newpage

\section{Main Content}
The second page uses the global style.

\end{document}
```

---

## Controlling Page Breaks

Manual control over page breaks is sometimes necessary to ensure content stays together or starts on a fresh page.

- `\newpage`: Forces a new page.

- `\nopagebreak[<priority>]`: Suggests avoiding a page break at the current location. The `<priority>` ranges from `0` to `4`, with `4` being the strongest request.

```latex
\documentclass{article}
\usepackage{lipsum}

\begin{document}

\section*{Important Results}
\nopagebreak[4]
This text is now guaranteed to stay with its heading.

\newpage

\section*{Appendix}
This text will start on the second page.

\end{document}
```

---

## Flexible Columns (the `multicol` package)

For locally mixed column layouts without page breaks, the `multicol` package is used.

- `\usepackage{multicol}` Enables multi-column layouts within selected parts of the document.

- `\begin{multicols}{<num>}`: Creates an environment with `num` columns. Content is automatically balanced (even height) across the columns on the final page. To disable this balancing, use `\begin{multicols*}{<num>}`.

- `\columnbreak`: Forces a column break at the insertion point.

- `\setlength{\columnsep}{<length>}`: Sets the horizontal space between columns.

- `\setlength{\columnseprule}{<length>}`: Sets the thickness of the vertical rule (line) between columns (default is `0pt`).

```latex
\documentclass{article}
\usepackage{multicol}
\usepackage{lipsum}

\setlength{\columnsep}{20pt}
\setlength{\columnseprule}{0.4pt}

\begin{document}

\section*{A Full-Width Title}

\begin{multicols}{2}
    \lipsum[1]
    \columnbreak
    \lipsum[2]
\end{multicols}

\end{document}
```

---

## Sub-page Layouts

The `minipage` environment creates a self-contained content block within the document. It is primarily used to position multiple elements (text, images, tables) side-by-side.

- `\begin{minipage}[<pos>]{<length>}`: Creates an inline block of a specified length.

  | `<pos>` | Description                                                        |
  | :-----: | ------------------------------------------------------------------ |
  |   `t`   | **t**op: Aligns the top of the minipage with the baseline.         |
  |   `c`   | **c**enter: Vertically centers the minipage, which is the default. |
  |   `b`   | **b**ottom: Aligns the bottom of the minipage with the baseline.   |


```latex
\documentclass{article}

\begin{document}

\noindent % Prevents indentation for the minipages
\begin{minipage}[t]{0.45\textwidth}
    \textbf{Column 1:} This is the first block of text.
    It is contained within its own minipage.
    The content here is longer to show the top alignment.
\end{minipage}
\hfill % Adds flexible space to push the columns apart
\begin{minipage}[t]{0.45\textwidth}
    \textbf{Column 2:} This is the second block of text.
\end{minipage}

\end{document}
```

---

## Margin Notes

Notes placed in the side margins are useful for annotations or editorial comments.

- `\marginpar{<text>}`: Creates a note in the margin.

- `\reversemarginpar`: Switches the margin (left vs. right) where subsequent notes appear. Use `\normalmarginpar` to switch back.

- `\usepackage{marginnote}`: Loads the package for non-floating margin notes. It provides support for environments (like lists, floats, and footnotes) where `\marginpar` may fail.

- `\marginnote{<text>}[<offset>]`: Creates a margin note at the current exact vertical position. The optional `offset` argument adds vertical space that shifts the note up or down from its default anchor point.

```latex
\documentclass{article}
\usepackage[letterpaper, margin=1.5in, marginparwidth=1in]{geometry}
\usepackage{marginnote}
\usepackage{lipsum}

\begin{document}

\section{Main Content}
\lipsum[1]
\marginpar{This is a margin note!}

\reversemarginpar

\lipsum[2]
\marginnote{This note is on the opposite margin and shifted upward by 1 cm.}[-1cm]

\end{document}
```
