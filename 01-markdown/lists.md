# Lists

[1. Unordered Lists](#1-unordered-lists)     
[2. Ordered Lists](#2-ordered-lists)     
[3. Nested Lists](#3-nested-lists)     
[4. Task Lists (Checkboxes)](#4-task-lists-checkboxes)        

---

### 1. Unordered Lists

Use hyphens `-`, asterisks `*`, or plus signs `+` as bullets. You can use them interchangeably.

**Example:**
```markdown
- Item 1
* Item 2
+ Item 3
```

**Rendered:**
- Item 1
* Item 2
+ Item 3

---

### 2. Ordered Lists

Use numbers followed by a period `1.`. Note: The actual numbers don't matter; Markdown will automatically number them sequentially.

**Examples:**
```markdown
1. First item
2. Second item
3. Third item
```

**Rendered:**
1. First item
2. Second item
3. Third item

---

### 3. Nested Lists

To nest a list, indent the sub-items. Standard: Indent by 4 spaces (or 1 tab).

**Example:**
```markdown
1. Main Item
    - Sub Item A
    - Sub Item B
        1. Sub-sub Item
```

**Rendered:**
1. Main Item
    - Sub Item A
    - Sub Item B
        1. Sub-sub Item

---

### 4. Task Lists (Checkboxes)

Create a checklist. Supported by GitHub, GitLab, Obsidian, and VS Code.

[ ] = Incomplete (Space required inside)

[x] = Complete

**Example:**
```markdown
- [x] Completed task
- [ ] Incomplete task
```

**Rendered:**
- [x] Completed task
- [ ] Incomplete task