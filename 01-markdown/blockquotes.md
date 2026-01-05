# Blockquotes

[1. Basic Syntax](#1-basic-syntax)     
[2. Nested Blockquotes](#2-nested-blockquotes)     
[3. Formatting Inside Blockquotes](#3-formatting-inside-blockquotes)     
[4. Github Alerts](#4-github-alerts)        

---

### 1. Basic Syntax

Start a line with a right angle bracket `>`. Best practice is to use `>` on every line of the quote, though some renderers support "lazy wrapping" (only putting it on the first line).

**Syntax:**
```markdown
> This is a blockquote.
> It spans multiple lines.
```

**Rendered:**
> This is a blockquote.     
> It spans multiple lines.

---

### 2. Nested Blockquotes

Use additional brackets `>>` to increase the nesting level.

**Syntax:**
```markdown
> Level 1
>> Level 2
>>> Level 3
```

**Rendered:**
> Level 1   
>> Level 2     
>>> Level 3    

---

### 3. Formatting Inside Blockquotes

Blockquotes can contain other Markdown elements like headers, lists, and code blocks.

**Syntax:**
```markdown
> ### The Header
> * List item 1
> * List item 2
```

**Rendered:**
> ### The Header
> * List item 1
> * List item 2

---

### 4. Github Alerts

Specific to GitHub Flavored Markdown (GFM). A special syntax to render colored alert boxes. The type must be in all caps: `NOTE`, `TIP`, `IMPORTANT`, `WARNING`, `CAUTION`.

**Syntax:**
```markdown
> [!NOTE]
> This is a note.

> [!WARNING]
> This is a warning.
```

**Rendered (on Github):**
> [!NOTE]
> This is a note.

> [!WARNING]
> This is a warning.