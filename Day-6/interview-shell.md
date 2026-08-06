### 1. What is the difference between a Soft Link and a Hard Link?

**Hard Link**

- A hard link is another name (reference) for the same file (same inode).
- Both the original file and the hard link point to the same data on the disk.
- If the original file is deleted, the hard link still works because the data remains until all hard links are removed.
- Changes made through either file are reflected in both.

**Soft Link (Symbolic Link)**

- A soft link is a shortcut that points to the path of another file.
- It has its own inode and stores only the file path.
- If the original file is deleted, the soft link becomes a broken (dangling) link.
- Soft links can also point to directories and files on different file systems.

**Example**

```bash
# Create a hard link
ln original.txt hardlink.txt

# Create a soft link
ln -s original.txt softlink.txt
```
---

### 2. Is Bash dynamically typed or statically typed? Why?


Bash is **dynamically typed** because variables do not have fixed data types.

```bash
x=10
x="Hello"
x=3.14
```
---
### 3. Explain a network troubleshooting utility.

**Traceroute**

```bash
traceroute www.google.com
```

**Explanation**

- `traceroute` displays the path (hops) that packets take to reach the destination.
- It shows each router between the source and destination.
- It also displays the response time for every hop.
- It is commonly used to identify network delays and routing issues.
---

### 4. How will you sort the list of names in a file?

```bash
sort names.txt
```

**Explanation**

- `sort` arranges the contents of a file in alphabetical order by default.
- It can also sort numerically, reverse the order, or remove duplicates using different options.

---
### 5. How will you manage logs of a system that generates huge log files every day?


Use **logrotate** to automatically manage log files.

**Explanation**

- Rotate log files daily, weekly, or monthly.
- Compress old logs to save disk space.
- Keep logs only for a specific period (for example, 30 days).
- Automatically delete old log files after the retention period.
- Prevents log files from consuming excessive disk space.

---
### 6. How do you check whether a file or directory exists?
- -f checks if the path is a regular file.
- -d checks if the path is a directory.

---
### 7.How do you count the number of lines, words, and characters in a file?
 
 By using **wc** command.
 - wc prints the number of lines, words, and character
 - wc -l = Count the number of lines.
 - wc -w = Count the number of words.
 - wc -c = Count the number of chararters.


 **Example**

```bash
wc -l sample.txt
wc -w sample.txt
wc -c sample.txt
```
---
### 8. What is the difference between `$*`, `$@`, `$#`, and `$?`?


| Variable | Description | 
|----------|-------------|
| `$*` | Represents all command-line arguments as a single string. |
| `$@` | Represents all command-line arguments individually. Commonly used inside loops.|
| `$#` | Returns the total number of command-line arguments passed to the script. | 
| `$?` | Returns the exit status of the previously executed command. `0` means success, any non-zero value indicates an error. | 

