# Tables

[1. Basic Structure](#1-basic-structure)     
[2. Alignment](#2-alignment)     
[3. Formatting Inside Cells](#3-formatting-inside-cells)
[4. Escaping Pipes](#4-escaping-pipes)     

---

### 1. Basic Structure

Tables are created using pipes `|` to separate columns and hyphens `-` to separate the header from the body. The outer pipes are optional but recommended for readability.

**Example:**
```markdown
| Header 1 | Header 2 |
| -------- | -------- |
| Cell 1A  | Cell 2A  |
| Cell 1B  | Cell 2B  |
```

**Rendered:**
| Header 1 | Header 2 |
| -------- | -------- |
| Cell 1A  | Cell 2A  |
| Cell 1B  | Cell 2B  |

---

### 2. Alignment

Colons `:` inside the header separator line determine column alignment.

**Alignment Options:**
| Alignment      | Syntax  |
| -------------- | ------- |
| Left (Default) | `:---`  |
| Center         | `:---:` |
| Right          | `---:`  |

**Example:**
```markdown
| Left Align | Center Align | Right Align |
| :--------- | :----------: | ----------: |
| Item 1     |    Item 2    |        $100 |
| Item 3     |    Item 4    |         $10 |
```

**Rendered:**
| Left Align | Center Align | Right Align |
| :--------- | :----------: | ----------: |
| Item 1     |    Item 2    |        $100 |
| Item 3     |    Item 4    |         $10 |

---

### 3. Formatting Inside Cells

Inline formatting (bold, italic, code, links, images) can be used inside cells. Block-level elements (headings, blockquotes, lists) cannot.

**Example:**
```markdown
| Feature | Example                                      |
| ------- | -------------------------------------------- |
| Bold    | **important**                                |
| Italic  | *emphasis*                                   |
| Code    | `inline_code()`                              |
| Link    | [Open Docs](https://example.com)             |
| Image   | ![Hubblesite](/99-resources/hubblesite2.jpg) |
```

**Rendered:**
| Feature | Example                                             |
| ------- | --------------------------------------------------- |
| Bold    | **important**                                       |
| Italic  | *emphasis*                                          |
| Code    | `inline_code()`                                     |
| Link    | [Open Docs](https://example.com)                    |
| Image   | ![Hubblesite](/99-resources/images/hubblesite2.jpg) |

---

### 4. Escaping Pipes

To display a literal pipe character `|` inside a cell, escape it with a backslash (`\`) or use the HTML entity `&#124;`.

**Example:**
```markdown
| Method   | Result |
| :------- | :----- |
| `\|`     | \|     |
| `&#124;` | &#124; |
```

**Rendered:**
| Method   | Result |
| :------- | :----- |
| `\|`     | \|     |
| `&#124;` | &#124; |