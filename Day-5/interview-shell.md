# Shell Scripting Interview Questions

This document contains some commonly asked Shell Scripting interview questions along with corrected examples and scripts.

---

### 1. List some commonly used shell commands

| Command | Description |
|----------|-------------|
| `ls` | List files and directories |
| `cd` | Change directory |
| `mkdir` | Create a directory |
| `rm` | Remove files/directories |
| `cp` | Copy files/directories |
| `mv` | Move or rename files |
| `touch` | Create an empty file |
| `cat` | Display file contents |
| `less` | View large files |
| `head` | Display first few lines of a file |
| `tail` | Display last few lines of a file |
| `grep` | Search text using patterns |
| `find` | Search files/directories |
| `awk` | Pattern scanning and text processing |
| `sort` | Sort text |
| `cut` | Extract columns from text |
| `wc` | Count lines, words, and characters |
| `ps` | Display running processes |
| `top` | Monitor running processes |
| `free` | Display memory usage |
| `df -h` | Display disk usage |
| `du -h` | Display directory/file size |
| `chmod` | Change file permissions |
| `chown` | Change file ownership |
| `curl` | Transfer data from URLs |
| `wget` | Download files |
| `ping` | Test network connectivity |

---

### 2. Write a simple shell script to list all process IDs

```bash
#!/bin/bash

ps -ef | awk 'NR>1 {print $2}'
```

**Explanation**

- `ps -ef` lists all running processes.
- `awk 'NR>1 {print $2}'` skips the header and prints only the Process ID (PID).

---

### 3. Write a shell script to print only errors from a remote log

```bash
#!/bin/bash

curl -s "https://your_remote_url/logfile.log" | grep -i "error"
```

**Explanation**

- `curl -s` downloads the log silently.
- `grep -i "error"` prints all lines containing the word "error" (case-insensitive).

---

### 4. Write a shell script to print numbers divisible by 3 or 5 but not 15 (1–100)

```bash
#!/bin/bash

for x in {1..100}
do
    if { [ $((x % 3)) -eq 0 ] || [ $((x % 5)) -eq 0 ]; } && [ $((x % 15)) -ne 0 ]; then
        echo "$x"
    fi
done
```
---

### 5. Write a shell script to count the number of "s" characters in "mississippi"

```bash
#!/bin/bash

word="mississippi"

grep -o "s" <<< "$word" | wc -l
```
- `grep` – Searches for text that matches a given pattern.
- `-o` – Prints only the matched text instead of the entire line.
- `"s"` – Specifies the character to search for.
- `<<< "$word"` – Passes the value of the variable to `grep` using a here-string.
- `|` – Sends the output of one command as the input to the next command.
- `wc` – Counts lines, words, and characters.
- `-l` – Counts the number of lines, which equals the number of matched `s` characters.
---

### 6. How will you debug a shell script?

Using Bash debugging options.

```bash
bash -x script.sh
```

or inside the script

```bash
#!/bin/bash

set -x

# commands
```

---

### 7. What is Crontab in Linux? Give an example.

**Answer**

Crontab is a Linux utility used to schedule commands or scripts to run automatically at specific times or intervals.

**Example**

Run a script every day at **9:00 AM**.

```cron
0 9 * * * /home/ec2-user/scripts/aws-report.sh
```

Example use cases:

- Daily AWS resource report
- Database backup
- Log cleanup
- Health monitoring
- Automated deployments

---

### 8. How do you open a file in read-only mode?

Using `vi` or `vim`:

```bash
vi -R filename
```

or

```bash
vim -R filename
```

---

### 9. What are break and continue statements?

**break**

Stops the loop immediately. 

**continue**

Skips the current iteration and continues with the next one.

>Provide an example for better understanding.


---

### 10. What are the disadvantages of Shell Scripting?

- Every external command execution creates a new process.
- Slower than compiled programming languages.
- Not suitable for large or complex applications.
- Limited data structures.
- Difficult to maintain large scripts.
- Error handling is less robust compared to modern programming languages.
- Platform-dependent (mostly Unix/Linux shells).

---


### 11. Difference between `>` and `>>`

- `>` overwrites a file.
- `>>` appends to a file.


