# 04: Page Layout

Page layout determines the physical dimensions of the document, including paper size, orientation, and margins. While the document class sets defaults, precise control over these elements is achieved through dedicated packages.

---

## The `geometry` Package

The `geometry` package provides a unified interface for defining page dimensions. While some page layout `options` can be set in `\documentclass`, it’s best practice to define all dimensions with `geometry`.

- `\usepackage[<options>]{geometry}`: Loads the `geometry` package, enabling control over margins, paper size, orientation, and other page dimensions.
  
  | `options`                         | Description                                                         |
  | --------------------------------- | ------------------------------------------------------------------- |
  | `a4paper`, `letterpaper`          | Sets the paper size.                                                |
  | `landscape`                       | Sets the page orientation to landscape.                             |
  | `oneside`, `twoside`              | Sets the layout for single-sided or double-sided printing.          |
  | `margin=<length>`                 | Sets all four margins (top, bottom, left, right) to the same value. |
  | `left=<length>`, `right=<length>` | Sets the left and right margins individually.                       |
  | `top=<length>`, `bottom=<length>` | Sets the top and bottom margins individually.                       |
  | `hmargin=<length>`                | Sets both the left and right margins to the same value.             |
  | `vmargin=<length>`                | Sets both the top and bottom margins to the same value.             |
  | `scale=<factor>`                  | Scales the text area.                                               |
  | `headsep=<length>`                | Sets the space between the header and the text body.                |
  | `bindingoffset=<length>`          | Adds extra space to the inner margin for binding.                   |
  | `includehead`, `includefoot`      | Includes the header and/or footer as part of the text height.       |
  | `showframe`                       | Draws visible frames around the margins for debugging layout.       |

```latex
\documentclass{article}
\usepackage[a4paper, margin=1in]{geometry} % Load the 'geometry' package

\begin{document}

\section{Introduction}

This page has been formatted using the \texttt{geometry} package.
The paper size is A4, and the margins are all set to one inch.

\end{document}
```

---

## Headers and Footers

The `\pagestyle` command controls the content of the headers and footers for the entire document.

- `\pagestyle{<style>}`: Sets the page style for the document.
  
  | `style`      | Description                                                                                                                                                                                                     |
  | ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
  | `plain`      | Prints the page number in the footer, which is the default.                                                                                                                                                     |
  | `headings`   | Prints the current chapter/section title and page number in the header.                                                                                                                                         |
  | `empty`      | Creates empty headers and footers (no page numbers).                                                                                                                                                            |
  | `myheadings` | Allows for custom header content. Use `\markright{<right_text>}` <br>for  `oneside` documents or `\markboth{<left_text>}{<right_text>}` <br>for `twoside` documents to set different headers on even/odd pages. |

- `\thispagestyle{<style>}`: Overrides the global style for the current page only.

- `\pagenumbering{<num_style>}`: Sets the page numbering style and resets the page counter.
  
  | `num_style` | Description                                    |
  | ----------- | ---------------------------------------------- |
  | `arabic`    | Arabic numerals (`1`, `2`, `3`...)             |
  | `roman`     | Lowercase Roman numerals (`i`, `ii`, `iii`...) |
  | `Roman`     | Uppercase Roman numerals (`I`, `II`, `III`...) |
  | `alph`      | Lowercase letters (`a`, `b`, `c`...)           |
  | `Alph`      | Uppercase letters (`A`, `B`, `C`...)           |

- **Dynamic Macros**: Prints dynamic document information like the current page number (`\thepage`), section number (`\thesection`), and chapter (`\leftmark`) or section heading (`\rightmark`) in books and reports.

```latex
\documentclass[twoside]{article}

\pagestyle{myheadings}

% Set the header text for the left (even) and right (odd) pages
\markboth{Even Page Header}{Odd Page Header}

\begin{document}

\section{First Page (Odd)}
This is the first page of the document, which is an odd-numbered page (page 1).
The header on this page will display the \texttt{right_text}.

\newpage

\section{Second Page (Even)}
This is the second page, which is an even-numbered page (page 2).
The header on this page will display the \texttt{left_text}.

\end{document}
```

---

## The `fancyhdr` Package

Use the `fancyhdr` package for full control over headers and footers.

- `\usepackage{fancyhdr}`: Loads the `fancyhdr` package, providing commands for custom header and footer design.

- `\pagestyle{fancy}`: Activates the custom header/footer settings.

- `\lhead{<text>}`, `\chead{<text>}`, `\rhead{<text>}`: Set the left, center, and right header fields.

- `\lfoot{<text>}`, `\cfoot{<text>}`, `\rfoot{<text>}`: Set the left, center, and right footer fields.

- `\renewcommand{\headrulewidth}{<length>}`: Sets the thickness of the line under the header. Use `0pt` for no line.

- `\renewcommand{\footrulewidth}{<length>}`: Sets the thickness of the line above the footer.

- `\fancyhead[<selectors>]{<text>}`, `\fancyfoot[<selectors>]{<text>}`: Sets the header/footer content based on page type (even/odd) in `twoside` documents.

  | `selectors`   | Description                                |
  | ------------- | ------------------------------------------ |
  | `L`, `C`, `R` | Left, Center, Right field.                 |
  | `E`, `O`      | Even, Odd pages (for `twoside` documents). |

- `\fancypagestyle{<name>}{<commands>}`: Defines a new page style.

- `\fancyhf{}`: Clears all header and footer fields.

- **Header Height**: If the header is tall, a warning may appear. The best practice is to set the header height using the `geometry` package: `\usepackage[headheight=<length>]{geometry}`.

```latex
\documentclass{article}
\usepackage[letterpaper, margin=1in, headheight=15pt]{geometry}
\usepackage{fancyhdr} % Load the 'fancyhdr' package

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

% Apply the custom 'firstpage' style to THIS page only
\thispagestyle{firstpage}

\section*{Title Page}
This is the first page. It has no header and a special centered footer.

\newpage

\section{Main Content}
This is the second page. It automatically uses the default \texttt{fancy}
pagestyle defined, with the page number in the top right.

\end{document}
```

---

## Controlling Page Breaks

Use these commands for direct control over where pages end and new ones begin.

- `\newpage`: Forces a new page to start at the exact point the command is placed.

- `\nopagebreak[<priority>]`: Suggests not to break the page. The `<priority>` from 0 to 4 indicates how undesirable a break is, with `[4]` being the strongest request. 

```latex
\documentclass{article}
\usepackage{lipsum} % For dummy text

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

## Multi-Column Layouts

Add the `twocolumn` option to `\documentclass` to enable a two-column layout for the entire document.

- `\documentclass[twocolumn]{article}`: Formats the entire document in two columns.

- `\onecolumn`, `\twocolumn`: Switches the document to a single-column or two-column layout, forcing a new page.

```latex
\documentclass[twocolumn]{article}
\usepackage{lipsum} % For dummy text

\begin{document}

\section{Introduction}
\lipsum[1-2]

\section{Background}
\lipsum[3-4]

\section{Conclusion}
\lipsum[5-6]

\end{document}
```

---

## The `multicol` Package

Use the `multicol` package for more control over multi-column layouts, such as having a full-width title and then switching to multiple columns

- `\usepackage{multicol}`: Loads the `multicol` package, enabling multi-column layouts within selected parts of the document.

- `\begin{multicols}{<num>}`: Begins an environment with `num` columns. The text will automatically balance across the columns on the last page. To disable this balancing, use `\begin{multicols*}{<num>}`.

- `\columnbreak`: Forces a column break at the point it is inserted.

- `\setlength{\columnsep}{<length>}`: Sets the amount of horizontal space between columns.

- `\setlength{\columnseprule}{<length>}`: Sets the thickness of the vertical rule (line) between columns. The default is `0pt` (no rule).

```latex
\documentclass{article}
\usepackage{multicol} % Load the 'multicol' package
\usepackage{lipsum}   % For dummy text

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

The `minipage` environment creates a small, self-contained "page" within the document. Its primary use is to place several blocks of content (text, images, tables) side-by-side.

- `\begin{minipage}[<pos>]{<length>}`: Creates an inline block of a specified length. The `pos` argument controls the vertical alignment.

  | `pos` | Description                                                        |
  | :---: | ------------------------------------------------------------------ |
  |  `t`  | **t**op: Aligns the top of the minipage with the baseline.         |
  |  `c`  | **c**enter: Vertically centers the minipage, which is the default. |
  |  `b`  | **b**ottom: Aligns the bottom of the minipage with the baseline.   |


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

The `\marginpar` command places short notes in the margin of the document.

- `\marginpar{<text>}`: Creates a note in the margin. In a `twoside` document, the note will appear in the right margin on odd-numbered pages and the left margin on even-numbered pages.

- `\reversemarginpar`, `\normalmarginpar`: Provide manual control over which side the notes appear on.

- **Margin Note Width**: The width of the margin note box is controlled by the `\marginparwidth` length parameter. The best practice is to set this using the geometry package: `\usepackage[marginparwidth=<length>]{geometry}`.

```latex
\documentclass{article}
\usepackage[letterpaper, margin=1.5in, marginparwidth=1in]{geometry}
\usepackage{lipsum} % For dummy text

\begin{document}

\section{Main Content}
\lipsum[1]
\marginpar{This is a margin note!}

\reversemarginpar

\lipsum[2]
\marginpar{This note is now on the left (inner) margin.}

\end{document}
```

---

## The `marginnote` Package

Use the `marginnote` package for more flexible margin notes, such as support for environments (like lists, floats, and footnotes) where `\marginpar` may fail.

- `\usepackage{marginnote}`: Loads the `marginnote` package, enabling more precise placement control.

- `\marginnote{<text>}[<offset>]`: Creates a margin note. The optional `offset` argument adds vertical space that shifts the note up or down from its default anchor point.

```latex
\documentclass{article}
\usepackage[letterpaper, margin=1.5in, marginparwidth=1in]{geometry}
\usepackage{lipsum}     % For dummy text
\usepackage{marginnote} % Load the 'marginnote' package

\begin{document}

\section{Introduction}
\lipsum[1]
\marginnote{This note is aligned with the paragraph.}[0cm]

\lipsum[2]
\marginnote{This note is shifted upward by 1 cm.}[-1cm]

\end{document}
```
