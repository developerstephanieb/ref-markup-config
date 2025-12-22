# Listings

This guide covers the `listings` package, which provides a customizable environment for typesetting source code.

---

## The `lstlisting` Environment

The primary tool for displaying code is the `lstlisting` environment.

- `\usepackage{listings}`: Loads the `listings` package, enabling the `lstlisting` environment, inline code commands, and configuration options for code styling.

- `\begin{lstlisting}[<options>]`: Begins the code listing environment. All text within this environment will be typeset as-is, preserving spacing and line breaks.

  | `options`                    | Description                                                                                         |
  | ---------------------------- | --------------------------------------------------------------------------------------------------- |
  | `language=<language_name>`   | Sets the programming language for syntax highlighting.                                              |
  | `caption={<text>}`           | Adds a numbered caption to the code listing.                                                        |
  | `label={<marker>}`           | Assigns a unique marker to the listing for cross-referencing.                                       |
  | `numbers=<position>`         | Adds line numbers to the listing (`left`, `right`, `none`).                                         |
  | `frame=<style>`              | Draws a frame around the code block (`single`, `shadowbox`, `none`).                                |
  | `basicstyle=\<command>`      | Sets the font style for the code.                                                                   |
  | `keywordstyle=\<command>`    | Sets the style for language keywords. Requires the `xcolor` package.                                |
  | `commentstyle=\<command>`    | Sets the style for comments.                                                                        |
  | `stringstyle=\<command>`     | Sets the style for strings.                                                                         |
  | `showstringspaces=<boolean>` | Controls whether spaces in strings are visualized. Set to `false` to display them as normal spaces. |

```latex
\documentclass{article}
\usepackage{xcolor} % Required for custom colors
\usepackage{listings}

\begin{document}

\begin{lstlisting}[
  language=C++,
  basicstyle=\small\ttfamily,
  keywordstyle=\color{blue},
  commentstyle=\color{green!60!black},
  stringstyle=\color{red},
  numbers=left,
  frame=single,
  showstringspaces=false
]
// This is a comment
#include <iostream>
using namespace std;

int main() {
    cout << "Hello, World!";
    return 0;
}
\end{lstlisting}

\end{document}
```

---

## Global Settings

A consistent style can be defined for all code blocks.

- `\lstset{<options>}`: Sets global options for all subsequent `lstlisting` environments. Options passed within a specific `lstlisting` environment override these global settings.

```latex
\documentclass{article}
\usepackage{xcolor}   % Required for custom colors
\usepackage{listings}
\usepackage{hyperref} % Required for \autoref

\lstset{
  language=Python,
  basicstyle=\small\ttfamily,
  keywordstyle=\color{blue},
  commentstyle=\color{green!60!black},
  stringstyle=\color{red},
  numbers=left,
  frame=single,
  showstringspaces=false
}

\begin{document}

You can refer to code snippets, like the one in \autoref{lst:hello_world}.

\begin{lstlisting}[
  caption={A "Hello, World!" program in Python.},
  label={lst:hello_world}
]
# This is a comment
def greet(name):
    """A simple function to greet someone."""
    message = f"Hello, {name}!"
    print(message)

greet("World")
\end{lstlisting}

\end{document}
```

---

## Inline Code

For short, inline code snippets, use the `\lstinline` command.

- `\lstinline|<code>|`: Typesets the `code` inline. 

```latex
\documentclass{article}
\usepackage{xcolor}
\usepackage{listings}

\lstset{
  language=bash,
  basicstyle=\ttfamily,
  keywordstyle=\color{blue}
}

\begin{document}

In the terminal, use the \lstinline|ls -l| command to list files
in the current directory. To create a new folder, use
\lstinline|mkdir new_directory|.

\end{document}
```
