# 06: Lists

This guide covers the standard LaTeX environments used to create itemized, numbered, and descriptive lists.

---

## List Environments

LaTeX provides three primary environments for creating lists. Each `\item` marks a new entry in the list, and these environments can be nested within each other to create complex outlines.

- `\begin{itemize}`: Creates a bulleted (unordered) list. The bullet style (e.g., `•`, `–`, `*`) changes automatically for each level of nesting.

- `\begin{enumerate}`: Creates a numbered (ordered) list. The numbering format (e.g., `1.`, `(a)`, `i`.) changes automatically for each level of nesting.

- `\begin{description}`: Creates a descriptive list, ideal for glossaries or definitions. Each item is labeled with a term provided in `\item[<label>]`, which is displayed in bold.

```latex
\documentclass{article}

\begin{document}

\section*{Bulleted List}
\begin{itemize}
  \item First top-level item.
  \item Second top-level item.
    \begin{itemize}
      \item A nested item.
      \item Another nested item.
    \end{itemize}
\end{itemize}

\section*{Numbered List}
\begin{enumerate}
  \item First step.
  \item Second step.
    \begin{enumerate}
      \item Sub-step A.
      \item Sub-step B.
    \end{enumerate}
  \item Final step.
\end{enumerate}

\section*{Descriptive List}
\begin{description}
  \item[Command] An instruction that begins with a backslash.
  \item[Environment] A block that applies a specific format to its content.
\end{description}

\end{document}
```

---

## The `enumitem` Package

Use the `enumitem` package for additional list formatting features.

- `\usepackage{enumitem}`: Loads the `enumitem` package, enabling list customization.

- `\setlist[<list_type>]{<options>}`: Sets global options for a specific list type (e.g., `itemize`, `enumerate`, `description`).

- `\begin{<list_type>}[<options>]`: Applies `options` to a single, specific list environment in the document body.

  | `options`             | Description                                                                                                                 |
  | --------------------- | --------------------------------------------------------------------------------------------------------------------------- |
  | `label=<format>`      | Sets the format for the item label. For `enumerate`, use counters like `\arabic*`, `\alph*`, or `\roman*`.                  |
  | `font=<\command>`     | Applies a font command (e.g., `\bfseries`) to the list labels.                                                              |
  | `labelsep=<length>`   | Sets the amount of space between the label and the item text.                                                               |
  | `align=<option>`      | Controls the alignment of the label itself (e.g., `right`).                                                                 |
  | `start=<integer>`     | Sets the starting number for an `enumerate` list.                                                                           |
  | `style=<type>`        | Changes the list's format (e.g., `sameline` puts label and text on the same line, `nextline` starts text on the next line). |
  | `leftmargin=<length>` | Controls the indentation of the list from the left margin.                                                                  |
  | `itemindent=<length>` | Controls the indentation of the item's text relative to its label.                                                          |
  | `topsep=<length>`     | Controls the vertical space above and below the list.                                                                       |
  | `itemsep=<length>`    | Controls the vertical space between items within the list.                                                                  |
  | `noitemsep`           | A shortcut for `itemsep=0pt`.                                                                                               |
  | `nosep`               | A shortcut that removes all vertical separation.                                                                            |
  | `before=<code>`       | Inserts `code` before the list environment begins.                                                                          |
  | `after=<code>`        | Inserts `code` after the list environment ends.                                                                             |
  | `inline`              | Displays lists horizontally. A `*` must also be appended to the list name (`enumerate*`, `itemize*`, `description*`).       |

```latex
\documentclass{article}
\usepackage{enumitem} % Load the 'enumitem' package

\setlist[enumerate]{label=\Roman*.}

\begin{document}

\section*{Global Styles}
This numbered list automatically uses the global settings:
\begin{enumerate}
    \item First item.
    \item Second item.
\end{enumerate}

\section*{Local Override}
This list overrides the global settings for a custom format:
\begin{enumerate}[label=\alph*), start=5, font=\bfseries]
    \item Starts from `e'.
    \item Uses bold, lowercase letters with a parenthesis.
\end{enumerate}

\end{document}
```
