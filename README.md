# List Commands Collection

## What

### What is **lscc**?

**lscc** is a improved version of some *ls* commands. </br>
E. g. `ls`, `lsusb`, `lsattr`, `lsmem`. 

### What for?

**lscc** is made for optimization of monitoring lists of system information with *manual*/*auto* updating.

## Roadmap
  - [x] ~~Srcipts for commands withouts flags~~
  - [x] ~~Manuals for them~~
  - [ ] Add working flags and options   *in process*
  - [ ] TUI version for all them

## Description

### Types of commands

At the moment, was made only *CLI* version. </br>
*TUI* version will be added later. </br>
This will be as `top` for *CLI* and as `htop` for *TUI* versions.

### Requirements

- `bash` version **3.2** or up.
- OS type `linux-gnu`

### Cross-reference for standart commands

| Standart command | Impoved command |
|:-----------------|:----------------|
| ls	           | lsc             |
| lsattr           | lscattr         |
| lsblk            | lscblk          |
| lscpu            | lsccpu          |
| lsinitcpio       | lscinitcpio     |
| lsipc	           | lscipc          |
| lsirq            | lscirq          |
| lslocks          | lsclocks        |
| lslogins         | lsclogins       |
| lsmem            | lscmem          |
| lsns             | lscns           |
| lsusb            | lscusb          |

### Manuals

For every command from **lscc** there are a manpage. </br>
To check manpage run:</br>
```bash
$ man [lscc]
```
### TUI

*TUI* version will be implemeted as long flag `--tui`


