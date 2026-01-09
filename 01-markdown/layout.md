# Layout

[1. Line Breaks](#1-line-breaks)     
[2. Collapsible Sections](#2-collapsible-sections)     
[3. Alignment](#3-alignment)     
[4. Non-Breaking Spaces](#4-non-breaking-spaces-indentation)     
[5. Horizontal Rules](#5-horizontal-rules)   
[6. Footnotes](#6-footnotes)  

---

### 1. Line Breaks

A single newline in Markdown source is treated as a space. Force a line break using one of the following methods.

| Method           | Syntax                 |
| :--------------- | :--------------------- |
| **Double Space** | End line with 2 spaces |
| **HTML Tag**     | `<br>`                 |

**Example:**
```markdown
Line 1 (followed by 2 spaces)  
Line 2

Line 3<br>Line 4
```

**Rendered:**
Line 1 (followed by 2 spaces)  
Line 2

Line 3<br>Line 4

---

### 2. Collapsible Sections

Create expandable/collapsible content using HTML `<details>` and `<summary>` tags. Markdown can be used inside the details block. 

**Example:**
```markdown
<details>
<summary>Click to expand</summary>

Here is the hidden content.
You can include **Markdown** inside too.

</details>
```

**Rendered:**
<details>
<summary>Click to expand</summary>

Here is the hidden content.
You can include **Markdown** inside too.

</details>

---

### 3. Alignment

Use a block-level HTML `<div>` with the align attribute.

**Example:**
```markdown
<div align="center">

# Centered Header
This text is centered.

</div>
```

**Rendered:**
<div align="center">

# Centered Header
This text is centered.

</div>

---

### 4. Non-Breaking Spaces (Indentation)

Markdown strips leading whitespace. To force indentation or extra spacing between words, use the HTML entity `&nbsp;`.

**Example:**
```markdown
No_Space
&nbsp;&nbsp;&nbsp;&nbsp;Four_Spaces_Indentation
```

**Rendered:**     
No_Space     
&nbsp;&nbsp;&nbsp;&nbsp;Four_Spaces_Indentation

---

### 5. Horizontal Rules

Create a horizontal line (thematic break) using three or more dashes `-`, asterisks `*`, or underscores `_`.

**Syntax:**
```markdown
---
***
___
````

**Rendered:**
---
***
___

---

### 6. Footnotes

Adds a footnote reference and a definition at the bottom of the content.

**Example:**
```markdown
Here is a statement.[^1]

[^1]: This is the footnote explanation.
```

**Rendered:**
Here is a statement.[^1]

[^1]: This is the footnote explanation.