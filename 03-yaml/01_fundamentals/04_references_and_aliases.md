# 04: References and Aliases (DRY YAML)

YAML includes features that supports the “Don’t Repeat Yourself” (DRY) principle. 

---

## Anchors and Aliases

**Anchors** can label data, and **aliases** can reference it, allowing entire blocks of code to be reused without copy-pasting.

- **Anchor (`&`)**: A label assigned to a piece of data so it can be referred to later. It's defined with an ampersand (`&`) followed by a name (e.g., `&my-label`).

- **Alias (`*`)**: A reference that duplicates the anchored data. It's called with an asterisk (`*`) followed by the anchor name (e.g., `*my-label`).

```yaml
base_user: &base # <-- 1. The anchor is created here
  lang: en
  theme: dark

user_1: *base    # <-- 2. The alias reuses the anchored block
user_2: *base
```

---

## Merging Dictionaries with Aliases

**Merges** allow key-value pairs from one dictionary to be combined into another.

- **Merge Key (`<<`)**: A key that copies all key-value pairs from the referenced alias into the current dictionary.

- **Overrides**: Keys defined alongside the merge take precedence, replacing values from the merged alias.

```yaml
# Anchor a base configuration
base_config: &base
  adapter: postgresql
  host: localhost
  pool: 5

# Merge the base config and override the 'host' key
production_config:
  <<: *base # Inherits adapter, host, and pool from the alias
  host: db.prod.com # Overrides the value of 'host'
```
