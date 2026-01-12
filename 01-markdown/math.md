# Math (Using LaTeX)

[1. Delimiters](#1-delimiters)     
[2. Common Symbols Lookup](#2-common-symbols-lookup)     
[3. Operators & Logic](#3-operators--logic)     
[4. Text Inside Math](#4-text-inside-math)     
[5. Matrices](#5-matrices)     

---

### 1. Delimiters

Markdown uses the dollar sign `$` to indicate math mode.

**Delimiter Types:**
| Type       | Syntax    | Description                            |
| :--------- | :-------- | :------------------------------------- |
| **Inline** | `$ ... $` | Renders math inside the text line.     |
| **Block**  | `$$...$$` | Renders math centered on its own line. |

**Example:**
```markdown
The area of a circle is $A = \pi r^2$ and the circumference is $C = 2\pi r$.

The quadratic formula is:
$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$
```

**Rendered:**
The area of a circle is $A = \pi r^2$ and the circumference is $C = 2\pi r$.

The quadratic formula is:
$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

---

### 2. Common Symbols Lookup

| Symbol        | Syntax                    | Rendered                  |
| :------------ | :------------------------ | :------------------------ |
| Superscript   | `x^2`                     | $x^2$                     |
| Subscript     | `x_i`                     | $x_i$                     |
| Greek Letters | `\alpha \beta \pi`        | $\alpha \beta \pi$        |
| Fractions     | `\frac{a}{b}`             | $\frac{a}{b}$             |
| Square Root   | `\sqrt{x}`                | $\sqrt{x}$                |
| Nth Root      | `\sqrt[n]{x}`             | $\sqrt[n]{x}$             |
| Summation     | `\sum_{i=1}^{n}`          | $\sum_{i=1}^{n}$          |
| Integral      | `\int_{a}^{b}`            | $\int_{a}^{b}$            |
| Limit         | `\lim_{x \to \infty}`     | $\lim_{x \to \infty}$     |
| Infinity      | `\infty`                  | $\infty$                  |
| Arrows        | `\rightarrow \Rightarrow` | $\rightarrow \Rightarrow$ |
| Partial       | `\partial`                | $\partial$                |

---

### 3. Operators & Logic

| Name             | Syntax    | Rendered  |
| :--------------- | :-------- | :-------- |
| Not Equal        | `\neq`    | $\neq$    |
| Approximately    | `\approx` | $\approx$ |
| Less or Equal    | `\leq`    | $\leq$    |
| Greater or Equal | `\geq`    | $\geq$    |
| Times            | `\times`  | $\times$  |
| Division         | `\div`    | $\div$    |
| Dot Product      | `\cdot`   | $\cdot$   |
| Plus/Minus       | `\pm`     | $\pm$     |
| Element Of       | `\in`     | $\in$     |
| Not Element Of   | `\notin`  | $\notin$  |
| Subset           | `\subset` | $\subset$ |
| Superset         | `\supset` | $\supset$ |
| Union            | `\cup`    | $\cup$    |
| Intersection     | `\cap`    | $\cap$    |
| For All          | `\forall` | $\forall$ |
| Exists           | `\exists` | $\exists$ |
| Logical And      | `\land`   | $\land$   |
| Logical Or       | `\lor`    | $\lor$    |
| Negation         | `\neg`    | $\neg$    |

---

### 4. Text Inside Math

To write normal text inside a math block (so it isn't italicized/squashed), use `\text{}`.

**Example:**
```markdown
$$
\text{curl} = \nabla \times \text{F}
$$
```

**Rendered:**
$$
\text{curl} = \nabla \times \text{F}
$$

---

### 5. Matrices

Uses the `\begin` and `\end` syntax syntax with different matrix types for different bracket styles.

**Matrix Types:**
| Type            | Syntax    | Rendered                                       |
| :-------------- | :-------- | :--------------------------------------------- |
| Parentheses     | `pmatrix` | $\begin{pmatrix} a & b \\ c & d \end{pmatrix}$ |
| Square Brackets | `bmatrix` | $\begin{bmatrix} a & b \\ c & d \end{bmatrix}$ |
| Curly Braces    | `Bmatrix` | $\begin{Bmatrix} a & b \\ c & d \end{Bmatrix}$ |
| Vertical Bars   | `vmatrix` | $\begin{vmatrix} a & b \\ c & d \end{vmatrix}$ |
| Double Bars     | `Vmatrix` | $\begin{Vmatrix} a & b \\ c & d \end{Vmatrix}$ |

**Example:**
```markdown
$$
\begin{bmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
7 & 8 & 9
\end{bmatrix}
$$
```

**Rendered:**
$$
\begin{bmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
7 & 8 & 9
\end{bmatrix}
$$