# 05: Lengths and Dimensions

This guide covers how LaTeX handles lengths and dimensions, including the various units of measurement and built-in parameters.

---

## Units of Measurement

LaTeX understands both absolute and relative units of length.

- **Absolute Units**: Units that have a fixed, real-world size.
  
  | Unit  | Description              |
  | :---: | ------------------------ |
  | `cm`  | Centimeters              |
  | `mm`  | Millimeters              |
  | `in`  | Inches                   |
  | `pt`  | Points (1 in = 72.27 pt) |

- **Relative Units**: Units that are defined relative to the current font size, making them ideal for creating scalable designs.
  
  | Unit  | Description                                       |
  | :---: | ------------------------------------------------- |
  | `em`  | The width of the letter "M" in the current font.  |
  | `ex`  | The height of the letter "x" in the current font. |

```latex
\documentclass{article}

\begin{document}

% This uses an absolute unit to create a fixed-size gap.
First word \hspace{1cm} Second word.

% This uses a relative unit. The space created by `em'
% depends on the current font size.
Normal space: A\hspace{2em}B

{\large Larger space: A\hspace{2em}B}

\end{document}
```

---

## Common Length Parameters

LaTeX provides several commands that act as variables, holding the current dimensions of various page elements. These are most often used to size images, tables, or other blocks relative to the page layout.

- `\textwidth`, `\textheight`: The width and height of the main text block on the page.

- `\paperwidth`, `\paperheight`: The width and height of the physical paper.

- `\linewidth`: The width of the current line. In a single-column layout, this is usually the same as `\textwidth`, but it can be narrower inside environments like lists or multi-column layouts.

- `\columnwidth`: The width of a single column in a multi-column layout.

- `\parindent`: The amount of horizontal indentation at the beginning of a paragraph.

- `\parskip`: The amount of vertical space between paragraphs.

```latex
\documentclass{article}
\usepackage{graphicx} % Required for \includegraphics

\begin{document}

This image is scaled by 50\% of the total text width.
This ensures it will always be half the width of the text block,
even if the page margins change.

\includegraphics[width=0.5\textwidth]{example-image-a}

\end{document}
```

---

## Modifying Length Parameters

The value of any length parameter can be changed using the following commands.

- `\setlength{<\command>}{<length>}`: Sets a length parameter to a specific value

- `\addtolength{<\command>}{<length>}`: Increments a length parameter by a given amount, adding to its current value.

```latex
\documentclass{article}

% Set the paragraph indent to 0pt
\setlength{\parindent}{0pt}

\begin{document}

This is the first paragraph. It is not indented, because
the value of the \texttt{\parindent} parameter was changed.

This is the second paragraph. It is also not indented.

\end{document}
```

---

## Creating New Length Parameters

New length commands can be defined to act as reusable variables for the layout.

- `\newlength{<\command>}`: Creates a new length command. The new length is initialized to `0pt`.

```latex
\documentclass{article}

% Create a new length command named \customindent
\newlength{\customindent}

% Set its value
\setlength{\customindent}{2cm}

\begin{document}

This line has no special indentation.

\hspace{\customindent}This line begins with a custom gap of 2cm.

\end{document}
```

