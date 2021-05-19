# List Commands Collection

## LSCC

### What is **lscc**?

**lscc** is a improved version of some *ls* commands. </br>
E. g. `ls`, `lsusb`, `lsattr`, `lsmem`. 

### What for?

**lscc** is made for optimization of monitoring lists of system information with *manual*/*auto* updating.

## Table of Contents

* [Roadmap](#roadmap)
* [Description](#description)
	* [Types of Command](#types-of-commands)
	* [Requirements](#requirements)
	* [Cross-reference](#cross-reference-for-standart-commands)
	* [Manuals](#manuals)
	* [TUI](#tui)
* [Deployment](#deployment)
	* [Installation](#installation)
	* [Uninstallation](#uninstallation)
* [Usage](#usage)


## Roadmap
  - [x] ~~Srcipts for commands withouts flags~~
  - [x] ~~Manuals for them~~
  - [ ] Add working flags and options   *in process*
  - [ ] TUI version for all them

## Description

### Types of Commands

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

## Deployment

### Installation

1. Download or clone this repo:
	- Git: `$ git clone https://github.com/MrZloHex/lscc.git`
2. Change working directory to *lscc*:
	- `$ cd lscc`
3. Run *installation* script:
	- `$ ./install.sh`
	- **NOTE** You need to have **sudo** access.

### Uninstallation

1. Change working directory to *lscc*:
	- `$ cd lscc`
2. Run *uninstallation* script:
	- `$ ./uninstall.sh`
3. Go out from directory:
	- `$ cd ..`

## Usage 

All commands work as standart. All is the same. E.g.:</br>
```bash
$ lscusb -t -v
```

# Why?
¯\\(ツ)/¯</br>
Interesting fact: all was written using `vim`

lsusb lsattr lsirq lsns