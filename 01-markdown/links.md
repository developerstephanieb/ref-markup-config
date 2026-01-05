# Links

[1. Inline Links](#1-inline-links)   
[2. Reference Style Links](#2-reference-style-links)    
[3. Autolinks](#3-autolinks)     
[4. Internal Links](#4-internal-anchors-jump-links)      
[5. Relative Links](#5-relative-links)

---

### 1. Inline Links

The standard format. Text is enclosed in brackets `[]`, URL in parentheses `()`.

**Syntax:**
```markdown
[Link Text](URL "Optional Title Tooltip")
```

**Example:**
```markdown
This is a link to [Google](https://www.google.com).
This is a link with a [tooltip](https://www.google.com "I am a tooltip!").
```

**Rendered:**    
This is a link to [Google](https://www.google.com).
This is a link with a [tooltip](https://www.google.com "I am a tooltip!").

---

### 2. Reference Style Links

Separates the link text from the URL definition (cleaner source code). Definitions can be placed anywhere in the file (usually at the bottom).

**Syntax:**
```markdown
[Link Text][label]

[label]: URL "Optional Title Tooltip"
```

**Example:**
```markdown
I use [Google][1] for search and [GitHub][gh] for code.

[1]: [https://www.google.com](https://www.google.com)
[gh]: [https://github.com](https://github.com) "GitHub Place"
```

**Rendered:** 
I use [Google][1] for search and [GitHub][gh] for code.

[1]: [https://www.google.com](https://www.google.com)
[gh]: [https://github.com](https://github.com) "GitHub Place"

---

### 3. Autolinks

Turns a raw URL or email into a clickable link.

**Syntax:**
```markdown
<URL>
<EMAIL>
```

**Example:**
```markdown
[https://www.google.com](https://www.google.com)    
<janedoe@example.com>
```

**Rendered:**    
[https://www.google.com](https://www.google.com)    
<janedoe@example.com>

---

### 4. Internal Anchors (Jump Links)

Links to headers within the same document. Converts header text to lowercase and replaces spaces with hyphens.

**Syntax:**
```markdown
[Go to Section](#section-name)
```

**Example:**
```markdown
[Jump back to Autolinks](#3-autolinks)
```

**Rendered:**  
[Jump back to Autolinks](#3-autolinks)

---

### 5. Relative Links

Links to other files in the same repository

**Syntax:**
| Target        | Syntax                   |
| ------------- | ------------------------ |
| Same Folder   | `[Text](./filename.md)`  |
| Parent Folder | `[Text](../filename.md)` |
| Root Folder   | `[Text](/filename.md)`   |

**Example:**
```markdown
[Link to math-latex](./math-latex.md)    
[Link to Hubblesite Image](../99-resources/images/hubblesite.jpg)      
[Link to a README](/README.md)     
```

**Rendered:**  
[Link to math-latex](./math-latex.md)    
[Link to Hubblesite Image](../99-resources/images/hubblesite.jpg)      
[Link to README](/README.md)     