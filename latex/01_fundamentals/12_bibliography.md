# 12: Bibliography

This guide covers how to create a bibliography and cite sources in LaTeX.

---

## The `thebibliography` Environment

For short documents, the bibliography can be created by hand directly in the document.

- `\begin{thebibliography}{<label>}`: Begins the bibliography. The `<label>` argument sets the width for aligning reference numbers (e.g., use 9 for up to 9 entries, 99 for up to 99, or 999 for up to 999).

- `\bibitem{<marker>}`: Creates a new bibliography entry with a unique `<marker>`.

- `\cite{<marker>}`: Inserts an in-text citation that corresponds to the `\bibitem` with the same `<marker>`.

```latex
\documentclass{article}

\begin{document}

The theory of relativity was a major breakthrough in physics~\cite{einstein1905}.
Another key paper is~\cite{dirac1928}.

\begin{thebibliography}{9} % Starts the bibliography
    \bibitem{einstein1905}
    A. Einstein, "On the Electrodynamics of Moving Bodies," 1905.

    \bibitem{dirac1928}
    P. A. M. Dirac, "The Quantum Theory of the Electron," 1928.
\end{thebibliography}

\end{document}
```

---

## BibTeX

BibTeX automates bibliography management by using a `.tex` file for the main document and a `.bib` file as a plain-text database of sources.

- `\bibliographystyle{<style>}`: Sets the citation and bibliography style.

  | `style`   | Sorting Method    | Citation Style          |
  | --------- | ----------------- | ----------------------- |
  | `plain`   | Alphabetical      | Numerical (`[1]`)       |
  | `unsrt`   | Order of citation | Numerical (`[1]`)       |
  | `alpha`   | Alphabetical      | Author-year (`[Knu84]`) |
  | `abbrv`   | Alphabetical      | Numerical (`[1]`)       |
  | `ieeetr`  | Order of citation | Numerical (`[1]`)       |
  | `acm`     | Alphabetical      | Numerical (`[1]`)       |
  | `apalike` | Alphabetical      | Author-year (`[Knu84]`) |

- `\bibliography{<filename>}`: Prints the bibliography from `filename.bib`.

- `\cite{<citation_key>}`: Inserts an in-text citation corresponding to an entry in the `.bib` file.

```latex
% mydocument.tex
\documentclass{article}

\begin{document}

Donald Knuth introduced the concept of literate programming~\cite{knuth1984}.

\bibliographystyle{plain}   % Set the bibliography style
\bibliography{myreferences} % Uses myreferences.bib for the bibliography

\end{document}
```

### The `.bib` File Format

Each entry in the `.bib` file starts with `@<entrytype>`, followed by a unique `citation_key` and a series of `<field> = {<value>}` pairs.

- `@<entrytype>`: Describes the type of source being cited.

- `<citation_key>`: A unique identifier for the source.

- `<field> = {<value>}`: Each entry type has a set of required and optional fields, which are case-insensitive. To preserve capitalization and formatting, use an extra set of braces `{{<value>}}` (e.g., `title = {A Guide to {LaTeX}}` or `author = {{The LaTeX Project}}`).

    | `@entrytype`                    | For Citing...                                                                                | Required `field`(s)                                    | Optional `field`(s)                                                                                                |
    | ------------------------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
    | `@article`                      | An article from a journal or magazine.                                                       | `author`, `title`, `journal`, `year`                   | `volume`, `number`, `pages`, `month`,<br> `note`                                                                   |
    | `@book`                         | A book with an explicit publisher.                                                           | `author` or `editor`, `title`, `publisher`,<br> `year` | `volume` or `number`, `series`, `address`,<br> `edition`, `month`, `note`                                          |
    | `@inproceedings`                | A paper in a conference proceedings.                                                         | `author`, `title`, `booktitle`, `year`                 | `editor`, `volume` or `number`, `series`,<br> `pages`, `address`, `month`, `organization`,<br> `publisher`, `note` |
    | `@phdthesis` or `@masterthesis` | A PhD or Master's thesis.                                                                    | `author`, `title`, `school`, `year`                    | `type`, `address`, `month`, `note`                                                                                 |
    | `@techreport`                   | A technical report from a school or other institution.                                       | `author`, `title`, `institution`, `year`               | `type`, `number`, `address`, `month`,<br> `note`                                                                   |
    | `@misc`                         | A fallback type for anything that doesn't fit elsewhere, like a website or a technical note. | *None*                                                 | `author`, `title`, `howpublished`, `month`,<br> `year`, `note`                                                     |

```latex
% myreferences.bib
@article{knuth1984,
  author  = {Donald E. Knuth},
  title   = {Literate Programming},
  journal = {The Computer Journal},
  volume  = {27},
  number  = {2},
  pages   = {97--111},
  year    = {1984},
}
```

### Compilation Workflow

To fully generate a bibliography with BibTeX, run this specific sequence of commands:

1. Compile the `.tex` file (e.g., `pdflatex mydocument`).

2. Run `bibtex` on the document (e.g., `bibtex mydocument`).

3. Compile the `.tex` file again.

4. Compile the `.tex` file one last time to ensure all references are correct.

---

## The `biblatex` Package

The `biblatex` package is the recommended system for bibliography management. It adds modern entry types and supports advanced citation styles.

- `\usepackage[backend=biber, style=<value>]{biblatex}`: Loads the `biblatex` package, enabling  modern bibliography management.

  | `style`       | Sorting Method     | Citation Style                                 |
  | ------------- | ------------------ | ---------------------------------------------- |
  | `numeric`     | Alphabetical       | Numerical (`[1]`)                              |
  | `alphabetic`  | Alphabetical       | Alphanumeric (`[Knu84]`)                       |
  | `authoryear`  | Author, then year  | Author-year (`(Knuth 1984)`)                   |
  | `authortitle` | Author, then title | Author-title (`(Knuth, Literate Programming)`) |
  | `verbose`     | Alphabetical       | Full footnote on first citation                |
  | `apa`         | Alphabetical       | Author-year (`(Knuth, 1984)`)                  |
  | `mla`         | Alphabetical       | Author-year (`(Knuth, 1984)`)                  |

- `\addbibresource{<filename>.bib}`: Specifies the `.bib` file to use.

- `\printbibliography`: Prints the bibliography.

```latex
\documentclass{article}
\usepackage[backend=biber, style=numeric]{biblatex} % Load the 'biblatex' package
\addbibresource{myreferences.bib}

\begin{document}

The official LaTeX project website provides introductory
materials~\cite{latex-project}.

\printbibliography % Prints the bibliography

\end{document}
```

### The `.bib` File Format

The `biblatex` package is backward-compatible with all standard BibTeX entry types and fields, and it introduces many new ones for better handling of modern sources.

| `@entrytype` | For Citing...                                   | Required `field`(s)                                  | Optional `field`(s)           |
| ------------ | ----------------------------------------------- | ---------------------------------------------------- | ----------------------------- |
| `@online`    | A website or other online resource.             | `author` or `editor`, `title`, `year`,<br> `url`     | `urldate`, `note`             |
| `@software`  | Computer software.                              | `author`, `title`, `year`                            | `version`, `url`, `publisher` |
| `@dataset`   | A published data set.                           | `author`, `title`, `year`                            | `version`, `url`, `doi`       |
| `@report`    | A technical report (improves on `@techreport`). | `author`, `title`, `type`, `institution`,<br> `year` | `number`, `address`, `month`  |

```latex
% myreferences.bib
@online{latex-project,
  author  = {{The LaTeX Project}},
  title   = {An introduction to LaTeX},
  year    = {2024},
  url     = {https://www.latex-project.org/about/},
  urldate = {2024-08-06},
}
```

### Compilation Workflow

The `biblatex` workflow uses `biber` instead of `bibtex`.

1. Compile the `.tex` file (`pdflatex mydocument`).

2. Run `biber` on the document (`biber mydocument`).

3. Compile the `.tex` file again (`pdflatex mydocument`).
