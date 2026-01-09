# Text Formatting

[1. Emphasis (Bold & Italic)](#1-emphasis-bold--italic)     
[2. Strikethrough](#2-strikethrough)    
[3. Escaping Characters](#3-escaping-characters) 
[4. Subscript & Superscript (HTML)](#4-subscript--superscript-html)     
[5. Keyboard Keys](#5-keyboard-keys)     
[6. Comments](#6-comments)

---

### 1. Emphasis (Bold & Italic)

Wrap text with asterisks `*` or underscores `_` for emphasis.

**Example:**
```markdown
**Bold Text** or __Bold Text__
*Italic Text* or _Italic Text_
***Bold and Italic***
```

**Rendered:**       
**Bold Text** or __Bold Text__    
*Italic Text* or _Italic Text_     
***Bold and Italic***     

---

### 2. Strikethrough

Wrap text with double tildes `~~` to render strikethrough text.

**Example:**
```markdown
~~This text is crossed out~~
```

**Rendered:**     
~~This text is crossed out~~

---

### 3. Escaping Characters

Prefix special characters with a backslash `\` to render them literally.

**Escapable Characters:**
| Character | Name         |
| :-------- | :----------- |
| `\`       | Backslash    |
| `` ` ``   | Backtick     |
| `*`       | Asterisk     |
| `_`       | Underscore   |
| `{ }`     | Curly Braces |
| `[ ]`     | Brackets     |
| `( )`     | Parentheses  |
| `#`       | Hash         |
| `+`       | Plus Sign    |
| `-`       | Minus Sign   |
| `.`       | Dot          |
| `!`       | Exclamation  |
| `\|`      | Pipe         |

**Example:**
```markdown
\*Not italic\*
```

**Rendered:**
\*Not italic\*

---

### 4. Subscript & Superscript (HTML)

Use HTML tags. For mathematical equations, use [Math (Latex)](./math-latex.md) instead.

**Example:**
```markdown
H<sub>2</sub>O
```

**Rendered:**
H<sub>2</sub>O

---

### 5. Keyboard Keys

Use the `<kbd>` HTML tag to style text as a keyboard key (usually renders like a button).

**Example:**
```markdown
Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to copy.
```

**Rendered:**
Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to copy.

---

### 6. Comments

Use HTML comment syntax `<!-- -->` to add notes that will not appear in rendered output.

**Example:**
```markdown
<!-- This comment is not visible -->
This text is visible.
```

**Rendered:**     
<!-- This comment is not visible -->
This text is visible.