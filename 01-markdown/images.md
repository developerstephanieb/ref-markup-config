# Images

[1. Basic Syntax](#1-basic-syntax)     
[2. Image as a Link](#2-image-as-a-link)     
[3. Resizing (HTML)](#3-resizing-html)     
[4. Reference Style Images](#4-reference-style-images)        

---

### 1. Basic Syntax

Similar to links, but prefixed with an exclamation mark `!`.

**Syntax:**
```markdown
![Alt Text](URL "Optional Title")
```

**Example:**
```markdown
![Earthrise from Apollo 8](https://upload.wikimedia.org/wikipedia/commons/a/a8/NASA-Apollo8-Dec24-Earthrise.jpg "Earthrise - December 24, 1968")
```

**Rendered:**     
![Earthrise from Apollo 8](https://upload.wikimedia.org/wikipedia/commons/a/a8/NASA-Apollo8-Dec24-Earthrise.jpg "Earthrise - December 24, 1968")

---

### 2. Image as a Link

Nesting an image syntax inside a link syntax allows the image to be clickable.

**Syntax:**
```markdown
[![Alt Text](Image_URL)](Link_URL)
```

**Example:**
```markdown
[![The Blue Marble from Apollo 17](https://upload.wikimedia.org/wikipedia/commons/9/97/The_Earth_seen_from_Apollo_17.jpg)](https://www.nasa.gov/mission/apollo-17)
```

**Rendered:**   
[![The Blue Marble from Apollo 17](https://upload.wikimedia.org/wikipedia/commons/9/97/The_Earth_seen_from_Apollo_17.jpg)](https://www.nasa.gov/mission/apollo-17)

---

### 3. Resizing (HTML)

Standard Markdown does not support image resizing. Use raw HTML tags `<img />` to control width or alignment.

**Syntax:**
```markdown
<img src="URL" alt="Alt Text" width="200" />
```

**Example:**
```markdown
<img src="https://upload.wikimedia.org/wikipedia/commons/f/ff/Apollo_12_Mission_image_-_Lunar_surface_%28AS12-47-6938%29.jpg" alt="Lunar Surface from Apollo 12" width="300" />
```

**Rendered:**    
<img src="https://upload.wikimedia.org/wikipedia/commons/f/ff/Apollo_12_Mission_image_-_Lunar_surface_%28AS12-47-6938%29.jpg" alt="Lunar Surface from Apollo 12" width="300" />

---

### 4. Reference Style Images

Keeps source code clean by defining the image URL at the bottom of the file.

**Syntax:**
```markdown
![Alt Text][image-id]

[image-id]: URL "Optional Title"
```

**Example:**
```markdown
![idk what goes here][aldrin]
![or here][bootprint]

[aldrin]: https://upload.wikimedia.org/wikipedia/commons/9/9c/Aldrin_Apollo_11.jpg "Buzz Aldrin on the Moon"
[bootprint]: https://upload.wikimedia.org/wikipedia/commons/8/89/Apollo_11_bootprint.jpg "Apollo 11 Bootprint"
```

**Rendered:**   
![idk what goes here][aldrin]
![or here][bootprint]

[aldrin]: https://upload.wikimedia.org/wikipedia/commons/9/9c/Aldrin_Apollo_11.jpg "Buzz Aldrin on the Moon"
[bootprint]: https://upload.wikimedia.org/wikipedia/commons/8/89/Apollo_11_bootprint.jpg "Apollo 11 Bootprint"