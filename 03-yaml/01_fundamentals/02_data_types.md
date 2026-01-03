# 02: Data Types

This guide covers the fundamental data types that can be used as values in YAML. These are known as **scalars**, as they represent a single value.

---

## Strings

**Strings** are sequences of characters and can be written in several ways.

- **Unquoted (Plain) Strings**: If a string doesn't contain any special characters, it can be written without quotes.

- **Quoted Strings**: Quotes are necessary when a string contains special YAML characters (like `:`, `{`, `[`, `#`), looks like another data type (like `true` or `1.0`), or needs to preserve leading/trailing whitespace. 

  **Single-Quoted (`'`)**: Everything inside is treated as literals. The only exception is the single quote itself, which must be escaped by doubling it (`''`).

  **Double-Quoted (`"`)**: Interprets backslash (`\`) sequences as special characters, such as `\n` for a newline or `\t` for a tab.

- **Literal Style (`|`)**: Preserves all newlines. 

- **Folded Style (`>`)**: Converts single newlines into spaces. Blank lines are preserved as paragraph breaks.

- **Chomping Indicator (`-` or `+`)**: Controls how the final newline character at the end of the string is handled.

  | Indicator | Name  | Description                                                                      |
  | :-------: | ----- | -------------------------------------------------------------------------------- |
  |           | Clip  | Keeps the final newline, but removes trailing blank lines, which is the default. |
  |    `-`    | Strip | Removes the final newline and all trailing blank lines.                          |
  |    `+`    | Keep  | Keeps the final newline and all trailing blank lines.                            |


```yaml
# Unquoted string
message: Hello, world!

# Use quotes to include special characters
path: 'C:\Users\My Documents'
# Escape a single quote by doubling it
quote: 'It''s a beautiful day.'

# \n will be interpreted as a newline character
multiline_message: "Line 1\nLine 2"

# All newlines are preserved
shipping_address: |
  123 Maple Street
  Anytown, USA 12345

# This example includes a paragraph break.
chapter_intro: >
  This is the first paragraph.
  It continues on this line.

  This is the second paragraph, which
  starts after the blank line above.

# Default "clip" behavior (a single newline at the end)
clip_example: |
  Some text.

# "Strip" removes the final newline (no newline at the end)
strip_example: |-
  Some text.

# "Keep" preserves all trailing newlines (three newlines at the end)
keep_example: |+
  Some text.
```

--- 

## Numbers

YAML supports both integer and floating-point numbers, as well as several numeric formats.

| Format              | Description                                       |
| ------------------- | ------------------------------------------------- |
| Scientific Notation | Represents powers-of-10 exponents using `e`.      |
| Hexadecimal         | Represents base-16 numbers using the `0x` prefix. |
| Octal               | Represents base-8 numbers using the `0o` prefix.  |
| Infinity            | Represents infinity using `.inf` or `-.inf`.      |
| Not a Number        | Represents the "Not a Number" value using `.nan`. |

```yaml
# Standard Integers and Floats
quantity: 42
negative_value: -100
price: 19.99

# Scientific Notation (6.626 x 10^-34)
planck_constant: 6.626e-34

# Hexadecimal (255)
hex_value: 0xFF

# Octal (15)
octal_value: 0o17

# Special Floats
positive_infinity: .inf
not_a_number: .nan
```

---

## Booleans

Booleans represent a `true` or `false` value.

```yaml
is_active: true
is_enabled: false
```

---

## Nulls

A null represents the absence of a value or an empty field.

- `null` or `~`: Used to explicitly indicate that a key has no value.

```yaml
# Both of these keys have a null value
middle_name: null
special_instructions: ~
```

---

## Dates and Timestamps

YAML automatically recognizes dates and timestamps formatted according to the ISO 8601 standard.

```yaml
# A simple date
creation_date: 2025-09-25

# A full timestamp with time and timezone offset
last_updated: 2025-09-25T17:49:14-07:00
```
