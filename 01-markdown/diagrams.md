# Diagrams (Using Mermaid)

[1. Flowcharts (Graphs)](#1-flowcharts-graphs)     
[2. Sequence Diagrams](#2-sequence-diagrams)     
[3. Pie Charts](#3-pie-charts)     
[4. Entity Relationship (ER) Diagram](#4-entity-relationship-er-diagrams)   

---

### 2. Sequence Diagrams

Used to show interactions over time between different participants. Sequence diagrams start with `sequenceDiagram`.

**Arrows:**
* `->`: Solid arrow
* `-->`: Dotted arrow / Response
* `->>`: Solid arrow with full head

**Example:**
````markdown
```mermaid
sequenceDiagram
    participant U as User
    participant S as Server
    participant D as Database
    
    U->>S: Request Data
    S->>D: Query Database
    D-->>S: Return Results
    S-->>U: Send Response
```
````

**Rendered:**
```mermaid
sequenceDiagram
    participant U as User
    participant S as Server
    participant D as Database
    
    U->>S: Request Data
    S->>D: Query Database
    D-->>S: Return Results
    S-->>U: Send Response
```

---

### 3. Pie Charts

Simple percentage visuals for showing proportional data. Pie charts start with `pie` followed by an optional title.

**Example:**
````markdown
```mermaid
pie title Project Status
    "Completed" : 70
    "In Progress" : 20
    "Blocked" : 10
```
````

**Rendered:**
```mermaid
pie title Project Status
    "Completed" : 70
    "In Progress" : 20
    "Blocked" : 10
```

---