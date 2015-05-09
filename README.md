# Tim Oram's m3800 System Setup

## Setup

Will install curl if it's missing using apt-get, rvm and ruby 2.2. The
gem librarian-chef will also be installed.

```bash
	./setup
```

## Running

This will run Chef with the described cookbooks

### Usage
```
Usage: $0 [--user|--system]
       $0 --help

If no options are given then it will run both the
system and user setups.

--help       Prints this message
--user       Run only the user setup
--system     Run only the system setup
```

### Basic usage

```bash
	./run.sh
```

