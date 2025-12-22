# 07: Images and Figures

This guide explains how to include images using the `graphicx` package, how to wrap them in the `figure` environment to add captions and labels, and arrange them within the document.

---

## Including Images

Use the `graphicx` package to add images to a document.

- `\usepackage{graphicx}`: Loads the `graphicx` package, enabling image-related commands.

- `\includegraphics[<options>]{<filename>}`: Inserts the image specified by `filename`. Common file types include PNG, JPG, and PDF. Image files should be placed in the same directory as the `.tex` file or referenced with a relative path (e.g., `path/to/filename`).

  | `options`         | Description                                                          |
  | ----------------- | -------------------------------------------------------------------- |
  | `width=<length>`  | Resizes the image to a specific width.                               |
  | `height=<length>` | Resizes the image to a specific height.                              |
  | `scale=<factor>`  | Scales the image by a factor (e.g., `0.5` for 50% of original size). |
  | `angle=<degrees>` | Rotates the image counter-clockwise by a number of degrees.          |

```latex
\documentclass{article}
\usepackage{graphicx} % Load the 'graphicx' package

\begin{document}

Here is some text, followed by an image scaled to 80\% of the text width.

\includegraphics[width=0.8\textwidth]{example-image-a}

\end{document}
```

---

## The `figure` Environment: The Float

To add a caption, create a label for referencing, and control placement, wrap the `\includegraphics` command inside a `figure` environment. This turns the image into a "floating" object.

- `\begin{figure}[<placement>]`: Begins the figure float. The optional `placement` specifier suggests where LaTeX should place the figure. Multiple specifiers can be combined (e.g., `htbp`), to give LaTeX options.
  
  | `placement` | Description                                            |
  | :---------: | ------------------------------------------------------ |
  |     `h`     | **h**ere: At the exact point in the code.              |
  |     `t`     | **t**op: At the top of the current or next page.       |
  |     `b`     | **b**ottom: At the bottom of the current or next page. |
  |     `p`     | **p**age: On a special page of floats.                 |
  |     `!`     | Overrides LaTeX's internal placement rules.            |

- `\caption{<text>}`: Adds a numbered caption to the figure.

- `\label{<marker>}`: Assigns a unique marker to the figure, which can then be referenced elsewhere. Figure labels are typically prefixed with `fig:`.

- `\ref{<marker>}`: Prints the number of the figure associated with the marker.

```latex
\documentclass{article}
\usepackage{graphicx}

\begin{document}

As shown in Figure~\ref{fig:sample}, the image is centered and has a caption.

\begin{figure}[h!] % Place it HERE if possible, overriding rules
  \centering
  \includegraphics[width=0.5\textwidth]{example-image-b}
  \caption{This is a sample figure.}
  \label{fig:sample} % Place label after caption
\end{figure}

\end{document}
```

---

## The `subcaption` Package

Use the `subcaption` package to create a single figure that is composed of multiple, individually captioned sub-figures (e.g., "Figure 1a" and "Figure 1b"). 

- `\usepackage{subcaption}`: Loads the `subcaption` package, which provides the `subfigure` environment for creating figures with individually captioned parts.

- `\begin{subfigure}[<pos>]{<width>}`: An environment for a single sub-figure. The optional `pos` argument (`t`, `c`, or `b`) controls the vertical alignment.

```latex
\documentclass{article}
\usepackage{graphicx}
\usepackage{subcaption} % Load the 'subcaption' package

\begin{document}

\begin{figure}[h!]
  \centering
  \begin{subfigure}[b]{0.48\textwidth}
    \includegraphics[width=\textwidth]{example-image-a}
    \caption{First sub-figure}
    \label{fig:sub1}
  \end{subfigure}
  \hfill
  \begin{subfigure}[b]{0.48\textwidth}
    \includegraphics[width=\textwidth]{example-image-b}
    \caption{Second sub-figure}
    \label{fig:sub2}
  \end{subfigure}
  \caption{A figure with two sub-figures.}
  \label{fig:main}
\end{figure}

We can now refer to the main figure as Figure~\ref{fig:main},
or to a specific sub-figure, like Figure~\ref{fig:sub1}.

\end{document}
```

---

## Side-by-Side Content

Use the `minipage` environment to place an image next to a block of text, or to place multiple, independent figures next to each other.

```latex
\documentclass{article}
\usepackage{graphicx}
\usepackage{lipsum} % For dummy text

\begin{document}

\begin{figure}[h!]
    \centering
    \begin{minipage}[b]{0.4\textwidth}
        \includegraphics[width=\textwidth]{example-image-a}
        \caption{A sample image.}
        \label{fig:side_image}
    \end{minipage}
    \hfill
    \begin{minipage}[b]{0.55\textwidth}
        \lipsum[1][1-10]
    \end{minipage}
\end{figure}

\end{document}
```

---

## The `wrapfig` Package

Use the `wrapfig` package to wrap text around a figure. This is useful for placing smaller images within a paragraph of text.

- `\usepackage{wrapfig}`: Loads the `wrapfig` package, which provides the `wrapfigure` environment for flowing text around an image.

- `\begin{wrapfigure}{<placement>}{<width>}`: The environment for the wrapped figure, where `placement` specifies the side of the page (`r` for right, `l` for left) and `width` is the total width the figure will occupy.

```latex
\documentclass{article}
\usepackage{graphicx}
\usepackage{wrapfig} % Load the 'wrapfig' package
\usepackage{lipsum}  % For dummy text

\begin{document}

\begin{wrapfigure}{r}{0.4\textwidth}
    \centering
    \includegraphics[width=0.35\textwidth]{example-image-c}
    \caption{A wrapped figure.}
\end{wrapfigure}

\lipsum[1-2]

\end{document}
```
