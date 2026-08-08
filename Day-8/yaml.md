### YAML

* YAML stands for YAML Ain't Markup Language.

* It is a Templeting languages like JSON.

* It is a simple text format and human readble.

* It's commonly used for configuration files, data exchange, and DevOps tools because it's easy to read and write.

Eg:

```yaml
name: Alice
age: 30
is_student: false

skills:
  - Python
  - JavaScript
  - SQL

address:
  city: New York
  zip: 10001

```

## YAML Syntax

### Strings, Numbers and Booleans:

```
string: Hello, World!
number: 42
boolean: true
```

### List 

```
fruits:
  - Apple
  - Orange
  - Banana
```

### Dictionary 

```
person:
  name: John Doe
  age: 30
  city: New York
```

### List of dictionaries 

YAML allows nesting of lists and dictionaries to represent more complex data.

```
family:
  parents:
    - name: Jane
      age: 50
    - name: John
      age: 52
  children:
    - name: Jimmy
      age: 22
    - name: Jenny
      age: 20
```


Eg: [myinfo.yaml](myinfo.yaml)

> To check your YAML file syntax is correct use [https://www.yamllint.com/](https://www.yamllint.com/)