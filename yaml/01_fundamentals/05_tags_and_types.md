# Tags and Types

**Tags** allows you to explicitly specify the type of a piece of data. While YAML is excellent at automatically detecting types (like strings, numbers, and booleans), tags give you fine-grained control when there might be ambiguity.

---

## Forcing a Scalar Type

Sometimes, a value can be ambiguous. For example, the string `NO` could be interpreted as a boolean `false`, or a version number like `v1.0` might be incorrectly parsed as a number. Tags are used to force the correct type. Double exclamation marks (`!!`) indicate that a value should be interpreted as one of YAML's built-in scalar types.

- `!!str`: Forces the value to be a string.

- `!!int`: Forces the value to be an integer.

- `!!float`: Forces the value to be a float.

```yaml
# Without a tag, 'NO' would be parsed as a boolean `false`.
country_code: !!str NO

# Without a tag, '1.0' would be a float. This ensures it's a string.
version: !!str 1.0

# Without a tag, '010' might be parsed as octal. This ensures it's a string.
product_id: !!str 010
```

---

## Custom Tags

Custom tags allow applications to attach special meaning to data. Unlike scalar type tags, they have no meaning on their own. They only work if the program parsing the YAML file is specifically designed to understand and process them.

- `!<tag>`: Defines a custom (or local) tag. The actual behavior depends on the application reading the YAML.

```yaml
# A custom tag for a square root
# The program reading this file would have special logic to handle '!sqrt'
# and replace the node with the square root of the number.
# It would see the value as the number `9`, not the string `"!sqrt 81"`. 
value: !sqrt 81
```
