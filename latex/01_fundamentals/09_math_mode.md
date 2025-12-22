# 09: Math Mode

This guide provides an overview of math mode, the specialized environment for typesetting mathematical formulas and equations.

---

## Entering Math Mode

There are two primary modes for typesetting mathematics.

- **Inline Mode**: For formulas that appear within a line of text. Wrap the expression by opening and closing with a single dollar sign (`$<expression>$`) or use `\( <expression> \)`.

- **Display Mode**: For formulas that are set apart from the text on their own line and centered. Wrap the expression with `\[ <expression> \]`.

```latex
\documentclass{article}

\begin{document}

This equation is written inline: $E = mc^2$

This equation is written in display mode:
\[
    F = ma
\]

\end{document}
```

---

## Manual Spacing

The following commands can be used to manually insert horizontal space for fine-tuning.

| Command  | Size          | Example Code  | Rendered Output |
| -------- | ------------- | ------------- | :-------------: |
| `\,`     | Thin space    | `$A\,B$`      |     $A\,B$      |
| `\:`     | Medium space  | `$A\:B$`      |     $A\:B$      |
| `\;`     | Thick space   | `$A\;B$`      |     $A\;B$      |
| `\quad`  | 1 em space    | `$A\quad B$`  |   $A\quad B$    |
| `\qquad` | 2 ems space   | `$A\qquad B$` |   $A\qquad B$   |
| `\!`     | Negative thin | `$A\!B$`      |     $A\!B$      |

---

## Fundamental Constructs

Group multi-character superscripts and subscripts with curly braces `{}`.

| Name         | Command                             | Example Code    | Rendered Output |
| ------------ | ----------------------------------- | --------------- | :-------------: |
| Superscripts | `^`                                 | `$x^{10}$`      |    $x^{10}$     |
| Subscripts   | `_`                                 | `$a_1$`         |      $a_1$      |
| Fractions    | `\frac{<numerator>}{<denominator>}` | `$\frac{1}{2}$` |  $\frac{1}{2}$  |
| Square roots | `\sqrt[<n>]{<radicand>}`            | `$\sqrt[3]{x}$` |  $\sqrt[3]{x}$  |

---

## Common Symbols

Beyond letters and numbers, math mode includes commands for a broad collection of symbols.

### General

|   Symbol    | Name               | Command     |
| :---------: | ------------------ | ----------- |
|  $\infty$   | Infinity           | `\infty`    |
| $\partial$  | Partial derivative | `\partial`  |
|  $^\circ$   | Degree             | `^\circ`    |
|  $\angle$   | Angle              | `\angle`    |
|   $\perp$   | Perpendicular      | `\perp`     |
| $\parallel$ | Parallel           | `\parallel` |

### Greek Letters

|       Symbol       | Name    | Command            |
| :----------------: | ------- | ------------------ |
|      $\alpha$      | alpha   | `\alpha`           |
|      $\beta$       | beta    | `\beta`            |
| $\gamma$, $\Gamma$ | gamma   | `\gamma`, `\Gamma` |
| $\delta$, $\Delta$ | delta   | `\delta`, `\Delta` |
|     $\epsilon$     | epsilon | `\epsilon`         |
| $\theta$, $\Theta$ | theta   | `\theta`, `\Theta` |
|      $\kappa$      | kappa   | `\kappa`           |
|     $\lambda$      | lambda  | `\lambda`          |
|       $\mu$        | mu      | `\mu`              |
|    $\pi$, $\Pi$    | pi      | `\pi`, `\Pi`       |
|       $\rho$       | rho     | `\rho`             |
| $\sigma$, $\Sigma$ | sigma   | `\sigma`, `\Sigma` |
|   $\phi$, $\Phi$   | phi     | `\phi`, `\Phi`     |
|       $\chi$       | chi     | `\chi`             |
| $\omega$, $\Omega$ | omega   | `\omega`, `\Omega` |

### Operators and Relations

|  Symbol   | Name                  | Command   |
| :-------: | --------------------- | --------- |
| $\times$  | Multiplication        | `\times`  |
|  $\div$   | Division              | `\div`    |
|   $\pm$   | Plus-minus            | `\pm`     |
|  $\cdot$  | Dot product           | `\cdot`   |
|  $\leq$   | Less than or equal    | `\leq`    |
|  $\geq$   | Greater than or equal | `\geq`    |
|  $\neq$   | Not equal             | `\neq`    |
| $\approx$ | Approximately         | `\approx` |
| $\equiv$  | Equivalent            | `\equiv`  |

### Functions

|             Symbol              | Name                         | Command                         |
| :-----------------------------: | ---------------------------- | ------------------------------- |
|          $\log$, $\ln$          | Logarithm, natural logarithm | `\log`, `\ln`                   |
|     $\sin$, $\cos$, $\tan$      | Trig functions               | `\sin`, `\cos`, `\tan`          |
|             $\exp$              | Exponential                  | `\exp`                          |
| $\arcsin$, $\arccos$, $\arctan$ | Inverse trig functions       | `\arcsin`, `\arccos`, `\arctan` |
|    $\sinh$, $\cosh$, $\tanh$    | Hyperbolic                   | `\sinh`, `\cosh`, `\tanh`       |

### Calculus

| Name      | Command                   | Example                  |    Rendered Output     |
| --------- | ------------------------- | ------------------------ | :--------------------: |
| Integral  | `\int_{<start>}^{<end>}`  | `$\int_{0}^{1} x^2\,dx$` | $\int_{0}^{1} x^2\,dx$ |
| Summation | `\sum_{<start>}^{<end>}`  | `$\sum_{i=1}^{n} i$`     |   $\sum_{i=1}^{n} i$   |
| Product   | `\prod_{<start>}^{<end>}` | `$\prod_{i=1}^{n} i$`    |  $\prod_{i=1}^{n} i$   |
| Limit     | `\lim_{<var> \to <val>}`  | `$\lim_{x \to \infty}$`  | $\lim_{x \to \infty}$  |

### Set Theory

|         Symbol         | Name                          | Command                |
| :--------------------: | ----------------------------- | ---------------------- |
|    $\in$, $\notin$     | Element of, not an element of | `\in`, `\notin`        |
| $\subset$, $\subseteq$ | Proper subset, subset         | `\subset`, `\subseteq` |
| $\supset$, $\supseteq$ | Proper superset, superset     | `\supset`, `\supseteq` |
|     $\cup$, $\cap$     | Union, intersection           | `\cup`, `\cap`         |
|      $\emptyset$       | Empty set                     | `\emptyset`            |

### Logic Symbols

|      Symbol       | Name                 | Command           |
| :---------------: | -------------------- | ----------------- |
|      $\neg$       | Negation (not)       | `\neg`            |
|  $\land$, $\lor$  | And, or              | `\land`, `\lor`   |
|   $\rightarrow$   | Implies              | `\rightarrow`     |
| $\Leftrightarrow$ | If and only if (iff) | `\Leftrightarrow` |
|     $\forall$     | For all              | `\forall`         |
|     $\exists$     | There exists         | `\exists`         |

### Accents

| Name         | Command              | Example     | Rendered Output |
| ------------ | -------------------- | ----------- | :-------------: |
| Hat          | `\hat{<variable>}`   | `\hat{x}`   |    $\hat{x}$    |
| Bar          | `\bar{<variable>}`   | `\bar{y}`   |    $\bar{y}$    |
| Tilde        | `\tilde{<variable>}` | `\tilde{z}` |   $\tilde{z}$   |
| Dot          | `\dot{<variable>}`   | `\dot{t}`   |    $\dot{t}$    |
| Vector arrow | `\vec{<variable>}`   | `\vec{v}`   |    $\vec{v}$    |

---

## The `equation` Environment

Use the `equation` environment for numbered equations that can be referenced.

- `\begin{equation}`: Begins a display math environment that will be automatically numbered.

- `\label{<marker>}`: Assigns a unique marker to the equation.

- `\ref{<marker>}`: Prints the equation number associated with marker.

```latex
\documentclass{article}

\begin{document}

As shown in Equation~\ref{eq:pythagorean}, the relationship is fundamental.

\begin{equation}
    a^2 + b^2 = c^2
    \label{eq:pythagorean}
\end{equation}

\end{document}
```

---

## The `amsmath` Package

Use the `amsmath` package to access environments for multi-line equations and matrices. Appending a `*` to a numbered environment removes equation numbering.

- `\usepackage{amsmath}`: Loads the `amsmath` package, enabling advanced mathematical typesetting.

- `\begin{align}`: For aligning multiple equations. The `&` character specifies the alignment point, typically the equals sign.

- `\begin{alignat}{<n>}`: An advanced version of `align` that provides control over alignment between `n` columns with `&`.

- `\begin{gather}`: For grouping multiple equations that should be centered without any specific alignment.

- `\begin{multline}`: For a single long equation that must be broken across multiple lines.

- `\begin{split}`: Used inside another environment (like `equation`) to break a single, long equation into multiple lines while allowing for alignment with `&`.

- `\begin{subequations}`: For creating a numbered group of equations with individual sub-labels.

- **Matrix Environments**: `\begin{pmatrix}` for parentheses, `\begin{bmatrix}` for brackets, and `\begin{vmatrix}` for vertical bars.

- `\begin{cases}`: For defining piecewise functions.

- Additional commands:

  | Name               | Command                    | Example                  |      Rendered Output      |
  | ------------------ | -------------------------- | ------------------------ | :-----------------------: |
  | Text in math       | `\text{<text>}`            | `$\text{speed} = 30$`    |    $\text{speed} = 30$    |
  | Box around content | `\boxed{<text>}`           | `$\boxed{E=mc^2}$`       |     $\boxed{E=mc^2}$      |
  | Dots               | `\dots`,`\cdots`, `\vdots` | `$\dots \cdots \vdots$`  | $\dots$ $\cdots$ $\vdots$ |
  | Double integral    | `\iint`                    | `$\iint xy\,dx\,dy$`     |    $\iint xy\,dx\,dy$     |
  | Triple integral    | `\iiint`                   | `$\iiint z\,dx\,dy\,dz$` |  $\iiint z\,dx\,dy\,dz$   |

```latex
\documentclass{article}
\usepackage{amsmath} % Load the 'amsmath' package

\begin{document}

This is an equation aligned at the equals sign.
\begin{align}
    f(x) & = (x+y)(x-y)          \\
         & = x^2 - xy + yx - y^2 \\
         & = x^2 - y^2
\end{align}

These two unnumbered equations are aligned in columns.
\begin{alignat*}{2}
    f(x) & = (x+y)(x-y)          & \qquad g(x) & = (x+y)^2         \\
         & = x^2 - xy + yx - y^2 &             & = x^2 + 2xy + y^2 \\
         & = x^2 - y^2
\end{alignat*}

This is a single equation broken into aligned lines.
\begin{equation}
    \begin{split}
        (x+y)^3 & = (x+y)(x+y)^2                            \\
                & = (x+y)(x^2 + 2xy + y^2)                  \\
                & = x(x^2 + 2xy + y^2) + y(x^2 + 2xy + y^2) \\
                & = x^3 + 2x^2y + xy^2 + x^2y + 2xy^2 + y^3 \\
                & = x^3 + 3x^2y + 3xy^2 + y^3
    \end{split}
\end{equation}

This is a matrix enclosed in parentheses.
\[
    A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}
\]

This is a piecewise function.
\[
    f(x) =
    \begin{cases}
        -x, & \text{if } x < 0    \\
        x,  & \text{if } x \geq 0
    \end{cases}
\]

\end{document}
```

---

## The `amssymb` Package

The `amssymb` package provides library of symbols used in advanced mathematics.

- `\usepackage{amssymb}`: Loads the `amssymb` package, enabling additional symbols for set theory and logic.

- Additional symbols:

  |                                       Symbol                                       | Name                         | Command                                                                            |
  | :--------------------------------------------------------------------------------: | ---------------------------- | :--------------------------------------------------------------------------------- |
  |                                    $\therefore$                                    | Therefore                    | `\therefore`                                                                       |
  |                                     $\because$                                     | Because                      | `\because`                                                                         |
  | $\mathbb{C}$, $\mathbb{R}$, $\mathbb{Q}$, $\mathbb{Z}$, $\mathbb{N}$, $\mathbb{I}$ | Number set                   | `\mathbb{C}`, `\mathbb{R}`, `\mathbb{Q}`, `\mathbb{Z}`, `\mathbb{N}`, `\mathbb{I}` |
  |                                     $\square$                                      | End-of-proof symbol (Q.E.D.) | `\square`                                                                          |

```latex
\documentclass{article}
\usepackage{amssymb} % Load the 'amssymb' package

\begin{document}

The set of real numbers is denoted by $\mathbb{R}$.

\end{document}
```
