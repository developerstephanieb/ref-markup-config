# 03: Text Format and Layout

LaTeX provides a comprehensive set of tools for controlling the appearance of text, from the style of individual words to the layout and spacing of entire paragraphs.

---

[Global Settings](#global-settings)    
[Font Appearance](#font-appearance)    
[Paragraph and Block Layout](#paragraph-and-block-layout)     
[Line Spacing (the setspace package)](#line-spacing-the-setspace-package)    
[Paragraph Spacing (the parskip package)](#paragraph-spacing-the-parskip-package)    
[Special Characters and Symbols](#special-characters-and-symbols)

---

## Global Settings

A document's foundational style is set in the preamble, establishing the default look for all text in the document.

- `\documentclass[<options>]{<class>}`: Sets base font size, paper size, and page orientation.

  | `<options>`              | Description                                                |
  | ------------------------ | ---------------------------------------------------------- |
  | `10pt`, `11pt`, `12pt`   | Sets the base font size for the document.                  |
  | `a4paper`, `letterpaper` | Sets the paper size.                                       |
  | `landscape`              | Sets the page orientation to landscape.                    |
  | `oneside`, `twoside`     | Sets the layout for single-sided or double-sided printing. |
  | `twocolumn`              | Typesets the document in two columns.                      |

- `\renewcommand{\familydefault}{<family_code>}`: Overrides the default font family for the entire document.

  | `<family_code>` | Description                               |
  | --------------- | ----------------------------------------- |
  | `\rmdefault`    | Sets the default to Roman (serif).        |
  | `\sfdefault`    | Sets the default to Sans-serif.           |
  | `\ttdefault`    | Sets the default to Monospace (Teletype). |

```latex
\documentclass[12pt]{article}
\renewcommand{\familydefault}{\sfdefault}

\begin{document}

This text will be 12pt and sans-serif by default.

\end{document}
```

---

## Font Appearance

Local font changes are implemented either as a **command** (which takes text as an argument) or as a **declaration** (which acts as a switch for all subsequent text within its scope).

- `\textbf{<text>}`, `\bfseries`: Makes text bold.

- `\textit{<text>}`, `\itshape`: Makes text italic.

- `\underline{<text>}`: Underlines text.

- `\textrm{<text>}`, `\rmfamily`: Switches to the Roman (serif) family.

- `\textsf{<text>}`, `\sffamily`: Switches to the Sans-serif family.

- `\texttt{<text>}`, `\ttfamily`: Switches to the Teletype (monospace) family.

- `\tiny`, `\scriptsize`, `\footnotesize`, `\small`, `\normalsize`, `\large`, `\Large`, `\LARGE`, `\huge`, `\Huge`: Declarations that change the text size relative to the document's base font. They range from `\tiny` (smallest) to `\Huge` (largest).

```latex
\documentclass{article}

\begin{document}

\textbf{This text is bold.}

You can also \textbf{\textit{nest them}}.

{
\sffamily\large
This entire sentence is large and sans-serif.
The \texttt{monospace} font is great for code.
}

This text is back to the document default.

\end{document}
```

---

## Paragraph and Block Layout

There are several environments for controlling the alignment and formatting of entire blocks of text, such as paragraphs, quotes, and poetry.

- `\begin{center}`, `\centering`: Centers text.
  
- `\begin{flushleft}`, `\raggedright`: Aligns text to the left.
  
- `\begin{flushright}`, `\raggedleft`: Aligns text to the right.

- `\begin{quote}`: Indents text on both sides. Used for short quotes or single paragraphs.

- `\begin{quotation}`: Indents text on both sides and indents the first line of new paragraphs. Used for long quotes spanning multiple paragraphs.

- `\begin{verse}`: Used for poetry. Line breaks are preserved using `\\`, and stanzas are separated by blank lines.

```latex
\documentclass{article}

\begin{document}

\begin{center}
    This text is centered.
\end{center}

\begin{verse}
  Roses are red, \\
  Violets are blue.
\end{verse}

\end{document}
```

---

## Line Spacing (the `setspace` package)

The vertical distance between lines within a block of text can be adjusted using the `setspace` package.

- `\usepackage[<options>]{setspace}`: Provides tools to control the spacing between lines.

   | `<options>`      | Description                  |
   | ---------------- | ---------------------------- |
   | `singlespacing`  | Sets single line spacing.    |
   | `onehalfspacing` | Sets one-and-a-half spacing. |
   | `doublespacing`  | Sets double line spacing.    |

- `\setstretch{<factor>}`: Sets a custom line spacing for the entire document.

- `\begin{spacing}{<factor>}`: Applies a custom spacing factor to a specific block of text.

- `\singlespacing`, `\onehalfspacing`, `\doublespacing`: Switches (declarations) that change the line spacing for all subsequent text.

```latex
\documentclass{article}
\usepackage[onehalfspacing]{setspace}
\usepackage{lipsum}

\begin{document}

\section*{Global Spacing}
\lipsum[1] % Renders with the global one-half spacing.

\begin{spacing}{2}
\lipsum[2] % Renders with double spacing.
\end{spacing}

\end{document}
```

---

## Paragraph Spacing (the `parskip` package)

By default, LaTeX separates paragraphs with a first-line indent and no vertical space. The `parskip` package changes this behavior to a "block" style (no indent, vertical space between paragraphs). This method is preferred over manual spacing adjustments as it preserves correct formatting for lists and other environments.

- `\usepackage[<options>]{parskip}`: Removes paragraph indentation and adds vertical space between paragraphs.

  | `<options>`       | Description                                                       |
  | ----------------- | ----------------------------------------------------------------- |
  | `skip=<length>`   | Sets the vertical space between paragraphs to a specified length. |
  | `indent=<length>` | Sets a paragraph indentation value (overriding the zero default). |

```latex
\documentclass{article}
\usepackage[skip=10pt]{parskip}
\usepackage{lipsum}

\begin{document}

\lipsum[1]

\lipsum[2]

\end{document}
```

---

## Special Characters and Symbols

Typographic symbols that are not available on standard keyboards are generated using specific commands.

| Symbol | Name                     | Command         |
| :----: | ------------------------ | --------------- |
|   §    | Section sign             | `\S`            |
|   ¶    | Paragraph sign (pilcrow) | `\P`            |
|   ©    | Copyright sign           | `\copyright`    |
|   †    | Dagger                   | `\dag`          |
|   ‡    | Double dagger            | `\ddag`         |
|   £    | Pounds sterling sign     | `\pounds`       |
|   …    | Ellipsis                 | `\textellipsis` |

```latex
\documentclass{article}

\begin{document}

As stated in \S 5 of the document, the results were conclusive.

The paragraph ends here \P. A dagger can be used for footnotes\dag.

This work is \copyright 2025.

\end{document}
```
