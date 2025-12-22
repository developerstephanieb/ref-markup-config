# 08: Tables

This guide explains how to create tables using the `tabular` environment, how to wrap them in the `table` environment to add captions and labels, and arrange them within the document.

---

## Creating Tables

The `tabular` environment is used to create the grid and content of a table.

- `\begin{tabular}{<cols>}`: Creates a table. The `cols` argument defines the column layout.

  |      `cols`       | Description                                                                                    |
  | :---------------: | ---------------------------------------------------------------------------------------------- |
  |        `l`        | A left-aligned column, which is the default.                                                   |
  |        `c`        | A center-aligned column.                                                                       |
  |        `r`        | A right-aligned column.                                                                        |
  |   `p{<width>}`    | A paragraph column of a fixed width. Text will auto-wrap.                                      |
  | `@{<expression>}` | Replaces inter-column space with `expression` (e.g. `@{ -- }`). Use `@{}` to remove the space. |
  |       `\|`        | Adds a vertical line between columns.                                                          |

- `&`: Separates content into the next column.

- `\\`: Ends the current row.

- `\hline`: Adds a horizontal line across rows.

```latex
\documentclass{article}

\begin{document}

Here is a table with lines:

\begin{tabular}{|l|c|r|}
    \hline
    \textbf{Item} & \textbf{Quantity} & \textbf{Price} \\
    \hline
    Bread         & 1                 & \$3.50         \\
    Milk          & 2                 & \$2.99         \\
    \hline
\end{tabular}

Here is a table using \verb|@{}| and \verb|p{}|:

\begin{tabular}{l@{ -- }p{5cm}}
    Label & Description                                \\
    Name  & A string identifying the person or object. \\
    Age   & The number of full years since birth.      \\
\end{tabular}

\end{document}
```

---

## Table Spacing

Vertical and horizontal spacing can be adjusted with these commands.

- `\renewcommand{\arraystretch}{<factor>}`: Multiplies the height of each row by a factor.

- `\setlength{\tabcolsep}{<length>}`: Sets the amount of horizontal padding on either side of each column to a specified length.

```latex
\documentclass{article}
\renewcommand{\arraystretch}{1.5}
\setlength{\tabcolsep}{10pt}

\begin{document}

\begin{tabular}{|l|c|r|}
    \hline
    \textbf{Item} & \textbf{Quantity} & \textbf{Price} \\
    \hline
    Bread         & 1                 & \$3.50         \\
    Milk          & 2                 & \$2.99         \\
    \hline
\end{tabular}

\end{document}
```

---

## Spanning Columns

For more complex tables, a cell may need to span multiple columns.

- `\multicolumn{<num>}{<cols>}{<text>}`: Creates a single cell that spans `num` columns.

- `\cline{<i-j>}`: Draws a horizontal line spanning columns `i` through `j`. Useful when a full `\hline` is not needed.

```latex
\documentclass{article}

\begin{document}

Here is a table with merged header columns and a partial horizontal line:

\begin{tabular}{|l|c|c|}
    \hline
    \textbf{Item} & \multicolumn{2}{c|}{\textbf{Details}}          \\
    \cline{2-3}
                  & Quantity                              & Price  \\
    \hline
    Bread         & 1                                     & \$3.50 \\
    Milk          & 2                                     & \$2.99 \\
    \hline
\end{tabular}

\end{document}
```

---

## Spanning Rows

Use the `multirow` package to create cells that spans multiple rows.

- `\usepackage{multirow}`: Loads the `multirow` package, enabling the `\multirow` command.

- `\multirow{<num>}{<width>}{<text>}`: Creates a cell that spans `num` rows. Use `*` for the width to let it adjust to the text’s natural size.

```latex
\documentclass{article}
\usepackage{multirow} % Load the 'multirow' package

\begin{document}

\begin{tabular}{|l|c|c|}
    \hline
    \textbf{Category}      & \textbf{Item} & \textbf{Price} \\
    \hline
    \multirow{2}{*}{Dairy} & Milk          & \$2.99         \\ % Spans 2 rows
                           & Cheese        & \$4.50         \\
    \hline
    Bakery                 & Bread         & \$3.50         \\
    \hline
\end{tabular}

\end{document}
```

---

## The `table` Environment: The Float

To add a caption, create a label for referencing, and control placement, wrap the `tabular` environment inside a `table` environment. This turns the table into a "floating" object.

- `\begin{table}[<placement>]`: Begins the table float. The optional `placement` specifier suggests where LaTeX should place the table. Multiple specifiers can be combined (e.g., `htbp`), to give LaTeX options.
  
  | `placement` | Description                                            |
  | :---------: | ------------------------------------------------------ |
  |     `h`     | **h**ere: At the exact point in the code.              |
  |     `t`     | **t**op: At the top of the current or next page.       |
  |     `b`     | **b**ottom: At the bottom of the current or next page. |
  |     `p`     | **p**age: On a special page of floats.                 |
  |     `!`     | Overrides LaTeX's internal placement rules.            |

- `\caption{<text>}`: Adds a numbered caption to the table.

- `\label{<marker>}`: Assigns a unique marker to the table, which can be referenced elsewhere. Table labels are typically prefixed with `tab:`.

- `\ref{<marker>}`: Prints the number of the table associated with the marker.

```latex
\documentclass{article}

\begin{document}

As shown in Table~\ref{tab:shopping_list}, the table is centered and has a caption.

\begin{table}[h!] % Place it HERE if possible, overriding rules
    \centering
    \begin{tabular}{|l|c|r|}
        \hline
        \textbf{Item} & \textbf{Quantity} & \textbf{Price} \\
        \hline
        Bread         & 1                 & \$3.50         \\
        Milk          & 2                 & \$2.99         \\
        \hline
    \end{tabular}
    \caption{A Sample Shopping List}
    \label{tab:shopping_list} % Place label after caption
\end{table}

\end{document}
```

---

## Overfull `\hbox` Warning

A common error with tables is an `Overfull \hbox` warning. This means the table is wider than the available text width and is sticking out into the margin. There are a few ways to address this.

1. Use a `p{<width>}` column for long text to allow it to wrap.

2. Use the `tabularx` package for an automated solution.

```bash
Overfull \hbox ([some amount] too wide) in paragraph at lines [line numbers]
```

---

## The `tabularx` Package

The `tabularx` package provides an environment that creates tables of a specific total width, with columns that automatically expand to fill the available space.

- `\usepackage{tabularx}`: Loads the `tabularx` package, enabling columns to automatically adjust their widths.

- `\begin{tabularx}{<width>}{<cols>}`: Creates a table that stretches to the specified total width.

- **`X` column type**: A `tabularx` column that behaves like `p{<width>}`, but automatically adjusts its width to fill the available space.

```latex
\documentclass{article}
\usepackage{tabularx} % Load the 'tabularx' package

\begin{document}

\begin{table}[h!]
    \caption{A table that automatically fits the page width.}
    \begin{tabularx}{\textwidth}{|l|X|}
        \hline
        \textbf{Term} & \textbf{Description}                                                                                   \\
        \hline
        tabularx      & An environment for creating tables of a fixed width with automatically expanding columns.              \\
        \hline
        Overfull hbox & An error that occurs when content is wider than the available text width, often caused by wide tables. \\
        \hline
    \end{tabularx}
\end{table}

\end{document}
```

---

## The `booktabs` Package

Use the `booktabs` package to create professional, publication-quality tables with better spacing and visual appeal. The package discourages the use of vertical lines.

- `\usepackage{booktabs}`: Loads the `booktabs` package, enabling its specialized rule commands.

- `\toprule`: A thicker rule for the top of the table, placed above the header row.

- `\midrule`: A standard-thickness rule used to separate the header from the table body.

- `\bottomrule`: A thicker rule for the bottom of the table, placed after the last row of data.

- `\cmidrule(<trim>){<i-j>}`: Draws a partial rule spanning from column `i` to column `j`.

  | `trim` | Description                                      |
  | ------ | ------------------------------------------------ |
  | `l`    | Trims the line on the left side.                 |
  | `r`    | Trims the line on the right side.                |
  | `lr`   | Trims the line on both the left and right sides. |

```latex
\documentclass{article}
\usepackage{booktabs} % Load the 'booktabs' package

\begin{document}

\begin{table}[h!]
    \centering
    \caption{Quarterly Sales Data}
    \begin{tabular}{lrrr}
        \toprule
        \textbf{Region} & \multicolumn{3}{c}{\textbf{Quarter}}                       \\
        \cmidrule(lr){2-4} % A trimmed rule under columns 2 through 4
                        & Q1                                   & Q2       & Q3       \\
        \midrule
        North           & \$10,000                             & \$12,000 & \$15,000 \\
        South           & \$8,000                              & \$9,000  & \$11,000 \\
        East            & \$11,000                             & \$13,000 & \$14,000 \\
        \bottomrule
    \end{tabular}
\end{table}

\end{document}
```

---

## Side-by-Side Content

Use the `minipage` environment to place a table next to a block of text, or to place multiple, independent tables next to each other.

```latex
\documentclass{article}
\usepackage{lipsum} % For dummy text

\begin{document}

\begin{table}[h!]
    \begin{minipage}[b]{0.4\textwidth}
        \centering
        \begin{tabular}{|c|c|} \hline A & B \\ \hline 1 & 2 \\ \hline \end{tabular}
        \caption{First Floating Table}
        \label{tab:float1}
    \end{minipage}
    \hfill
    \begin{minipage}[b]{0.55\textwidth}
        \lipsum[1][1-10]
    \end{minipage}
\end{table}

\end{document}
```
