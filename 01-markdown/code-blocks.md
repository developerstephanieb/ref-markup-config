# Code Blocks

[1. Inline Code](#1-inline-code)     
[2. Fenced Code Blocks](#2-fenced-code-blocks)     
[3. Syntax Highlighting](#3-syntax-highlighting)     
[4. Diffs](#4-diffs)     
[5. Escaping Backticks (Nesting)](#5-escaping-backticks-nesting)     

---

### 1. Inline Code

Used to highlight short snippets within a sentence. Use single backticks `` ` ``.

**Example:**
```markdown
The `console.log()` function prints output to the console.
```

**Rendered:**    
The `console.log()` function prints output to the console.

---

### 2. Fenced Code Blocks

Used for multi-line code. Use triple backticks ` ``` ` or triple tildes `~~~` on the lines before and after the code.

**Example:**
````markdown
```
function greet(name) {
  return "Hello, " + name;
}
```
````

**Rendered:**   
```
function greet(name) {
  return "Hello, " + name;
}
```

---

### 3. Syntax Highlighting

Append the language name (or abbreviation) to the opening backticks to enable color formatting.

**Common Languages:**
| Language         | Identifier          |
| :--------------- | :------------------ |
| **JavaScript**   | `js`, `javascript`  |
| **Python**       | `py`, `python`      |
| **Java**         | `java`              |
| **C++**          | `cpp`, `c++`        |
| **C**            | `c`                 |
| **TypeScript**   | `ts`, `typescript`  |
| **Go**           | `go`, `golang`      |
| **Rust**         | `rust`, `rs`        |
| **SQL**          | `sql`               |
| **HTML**         | `html`              |
| **CSS**          | `css`               |
| **Bash/Shell**   | `bash`, `sh`        |
| **YAML**         | `yaml`, `yml`       |
| **JSON**         | `json`              |
| **Markdown**     | `md`, `markdown`    |
| **Dockerfile**   | `dockerfile`        |
| **No Highlight** | `text`, `plaintext` |

**Example:**
````markdown
```python
def factorial(n):
    if n <= 1:
        return 1
    return n * factorial(n - 1)
```
````

**Rendered:**   
```python
def factorial(n):
    if n <= 1:
        return 1
    return n * factorial(n - 1)
```

---

### 4. Diffs

Used to show added or removed lines. Use the `diff` identifier and start lines with `+` or `-`.

**Example:**
````markdown
```diff
- const oldVariable = "deprecated";
+ const newVariable = "updated";
  const unchanged = "same";
```
````

**Rendered:**   
```diff
- const oldVariable = "deprecated";
+ const newVariable = "updated";
  const unchanged = "same";
```

---

### 5. Escaping Backticks (Nesting)

To display a code block inside a code block (like in this documentation), wrap the inner code with more backticks than the inner code uses.

**Example:**
`````markdown
To show 3 backticks, use 4:
````markdown
```python
print("Hello, World!")
```
````
`````

**Rendered:**    
To show 3 backticks, use 4:
````markdown
```python
print("Hello, World!")
```
````