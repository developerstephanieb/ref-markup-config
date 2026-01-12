# Links

[1. Inline Links](#1-inline-links)   
[2. Reference Style Links](#2-reference-style-links)    
[3. Autolinks](#3-autolinks)     
[4. Internal Links](#4-internal-anchors-jump-links)      
[5. Relative Links](#5-relative-links)     
[6. Github Magic Links](#6-github-magic-links)

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

Automatically turn a raw URL or email into a clickable link by enclosing it in angle brackets `<>`.

**Example:**
```markdown
Contact <support@example.com> for assistance.
```

**Rendered:**    
Contact <support@example.com> for assistance.

---

### 4. Internal Anchors (Jump Links)

Links to headers within the same document. Converts header text to lowercase and replaces spaces with hyphens.

**Syntax:**
```markdown
[Link text](#heading-id)
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

**Common Patterns:**
| Target        | Syntax                   |
| ------------- | ------------------------ |
| Same Folder   | `[Text](./filename.md)`  |
| Parent Folder | `[Text](../filename.md)` |
| Root Folder   | `[Text](/filename.md)`   |

**Example:**
```markdown
[Link to math-latex reference](./math-latex.md)    
[Link to image in resources](../99-resources/images/hubblesite.jpg)      
[Link to root README](/README.md)     
```

**Rendered:**  
[Link to math-latex reference](./math-latex.md)    
[Link to image in resources](../99-resources/images/hubblesite.jpg)      
[Link to root README](/README.md) 

---

### 6. GitHub Magic Links

Specific to GitHub Flavored Markdown (GFM). GitHub automatically creates links for certain references without any Markdown syntax.

| Type           | Syntax        | Description                                       |
| -------------- | ------------- | ------------------------------------------------- |
| **User/Org**   | `@username`   | Links to the user's profile.                      |
| **Issue/PR**   | `#123`        | Links to Issue `#123` in the current repo.        |
| **Commit**     | `a1b2c3d`     | Links to a commit SHA (must be at least 7 chars). |
| **Cross-Repo** | `user/repo#1` | Links to an issue in another repository.          |

**Example:**
```markdown
Thanks @octocat for reviewing! This fixes #42 and relates to microsoft/vscode#1000.
The bug was introduced in commit a1b2c3d4e5f.
```

**Rendered:**    
Thanks @octocat for reviewing! This fixes #42 and relates to microsoft/vscode#1000.
The bug was introduced in commit a1b2c3d4e5f.
