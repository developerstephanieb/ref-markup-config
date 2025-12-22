# 01: Syntax

This guide provides an overview of YAML's core syntax, which is used to represent data in a human-readable format.

---

## Comments

The hash symbol (`#`) marks the beginning of a comment. Everything from the hash to the end of the line is ignored by the parser.

```yaml
# This is a comment.
```

---

## Key-Value Pairs

A `<key>: <value>` associates a name (the key) with a piece of data (the value).

- **Keys**: A key is followed by a colon and a space (`: `), and then its value.

- **Values**: Values can be simple data types like strings, numbers, or booleans.

```yaml
# A key named 'name' with a string value
name: John Doe

# A key named 'age' with a number value
age: 42

# A key named 'is_employed' with a boolean value
is_employed: true
```

---

## Indentation and Structure

YAML uses indentation (with spaces, not tabs) to define the structure of the data. Nesting is achieved by indenting a block of key-value pairs under a parent key. The standard convention is to use two spaces for each level of indentation.

```yaml
# 'address' is a parent key.
# 'street' and 'city' are nested inside 'address'.
address:
  street: 123 Main St
  city: Anytown
```
