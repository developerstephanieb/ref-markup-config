# Collections (Lists & Dictionaries)

**Collections** are data structures that hold other data. YAML has two primary types: **lists** (also called sequences) and **dictionaries** (also called mappings).

---

## Lists (Sequences)

A **list** is a collection of items where the order matters. Each item in a list begins with a dash and a space (`- `).

```yaml
# A list of server roles
roles:
  - web
  - database
  - cache
```

---

## Dictionaries (Mappings)

A **dictionary** is a collection of key-value pairs.

```yaml
# A dictionary describing a server
server_config:
  cpu: 4
  memory: 8GB
  disk: 100GB
```

---

## Nesting Collections

Collections can be placed inside one another.

- **List of Dictionaries**: Represents a list of structured items. Each item in the list is a dictionary with its own set of key-value pairs.

- **Dictionary Containing a List**: A dictionary key that maps to a list of values.

```yaml
# A list where each item is a user dictionary
users:
  - name: Alice
    email: alice@example.com
    role: admin
  - name: Bob
    email: bob@example.com
    role: editor

# A dictionary for a blog post, which contains a list of tags
article:
  title: "YAML is Awesome"
  author: "Jane Doe"
  tags:
    - configuration
    - devops
    - tutorial
```

---

## Flow Style (Inline Collections)

**Flow style** is a more compact, JSON-like syntax that doesn't rely on newlines and indentation.

- **Inline Lists**: Use square brackets `[]`, with items separated by commas.

- **Inline Dictionaries**: Use curly braces `{}`, with key-value pairs separated by commas.

- Combining Flow Styles: Flow styles can be nested just like block styles.

```yaml
# An inline list of packages to install
packages: [nginx, postgresql, redis]

# An inline dictionary for coordinates
coordinates: {latitude: 34.0522, longitude: -118.2437}

# A list of users, using flow style for both the list and the dictionaries
users:
  [
    {name: Alice, role: admin},
    {name: Bob, role: editor}
  ]
```
