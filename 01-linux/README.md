# OverTheWire Bandit — Linux & Command-Line Learning

A personal write-up documenting my progress through the **OverTheWire Bandit** wargame.

Bandit is designed to teach the fundamentals of Linux, the command line, file manipulation, permissions, SSH, compression, encoding, and other practical system administration concepts through hands-on challenges.

---

## 📚 Progress

For each completed level, I have documented:

* **Challenge** — What the level asked me to find or accomplish
* **Solution** — The commands I used
* **Explanation** — A breakdown of how the solution works
* **Password** — The password obtained for the next level
* **What I learned** — The key concept or skill from the challenge
* **Screenshot of level completion** — Evidence of completing the level

> ⚠️ **Passwords and sensitive credentials are redacted from this public repository. Private SSH keys are never included.**

---

## 🧠 Key Concepts Learned So Far

| Area                | Skills                                  |
| ------------------- | --------------------------------------- |
| Linux navigation    | `pwd`, `cd`, `ls`                       |
| File management     | `cp`, `mv`, `cat`                       |
| Searching           | `grep`, `find`                          |
| Text processing     | `sort`, `uniq`                          |
| Encoding            | Base64, ROT13                           |
| File identification | `file`, `strings`                       |
| Hexadecimal         | `xxd`                                   |
| Compression         | `gzip`, `bzip2`                         |
| Archives            | `tar`                                   |
| Permissions         | `chmod`                                 |
| Ownership           | Users and groups                        |
| SSH                 | Password and key-based authentication   |
| Temporary files     | `mktemp`                                |
| Troubleshooting     | Reading and interpreting error messages |

---

## 🎯 Key Takeaways

One of the biggest lessons from Bandit so far has been learning to **read the clues and let the terminal provide information before guessing**.

For example:

```bash
file <filename>
```

can tell me what type of file I am dealing with, while error messages often explain exactly why a command failed.

Rather than memorising commands individually, I am learning to build a process:

```text
Understand the challenge
        ↓
Identify the relevant file/system information
        ↓
Choose the appropriate command
        ↓
Read the output/error
        ↓
Adjust the approach
        ↓
Verify the result
```

This has helped me become more comfortable working in a Linux terminal and troubleshooting problems independently.

---

## 🔐 Security Note

This repository is intended as a learning journal.

**Passwords are redacted and private SSH keys are not included.**

