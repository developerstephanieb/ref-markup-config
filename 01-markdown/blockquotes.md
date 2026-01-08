# Blockquotes

[1. Basic Syntax](#1-basic-syntax)     
[2. Nested Blockquotes](#2-nested-blockquotes)     
[3. Formatting Inside Blockquotes](#3-formatting-inside-blockquotes)     
[4. Github Alerts](#4-github-alerts)        

---

### 1. Basic Syntax

Start a line with a right angle bracket `>`. Best practice is to use `>` on every line of the quote, though some renderers support "lazy wrapping" (only putting it on the first line).

**Example:**
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

**Example:**
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

**Example:**
```markdown
> ### The Header
> * List item 1
> * List item 2    
> 
> Some `inline code` here.
```

**Rendered:**
> ### The Header
> * List item 1
> * List item 2    
> 
> Some `inline code` here.

---

### 4. Github Alerts

Specific to GitHub Flavored Markdown (GFM). A special syntax to render colored alert boxes.

**Available Alert Types:**

| Type        | Usage          | Purpose                                    |
| :---------- | :------------- | :----------------------------------------- |
| `NOTE`      | `[!NOTE]`      | Highlights information users should notice |
| `TIP`       | `[!TIP]`       | Provides helpful advice or best practices  |
| `IMPORTANT` | `[!IMPORTANT]` | Critical information for success           |
| `WARNING`   | `[!WARNING]`   | Urgent info about risks or consequences    |
| `CAUTION`   | `[!CAUTION]`   | Advises about potential negative outcomes  |

**Example:**
```markdown
> [!NOTE]
> This is a note with useful information.

> [!WARNING]
> This action may have serious consequences.
```

**Rendered (on Github):**
> [!NOTE]
> This is a note with useful information.

> [!WARNING]
> This action may have serious consequences.