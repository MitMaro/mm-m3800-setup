# Tim Oram's m3800 System Setup

This contains my personal collection of Chef cookbooks that are used to create my
Linux enrironment. It uses the client mode of Chef and currently does not follow
several of the best practices for Chef. The project also contains two bash scripts;
`setup.sh` and `run.sh`. `setup.sh` will run the basic install required to start
using Chef and `run.sh` will run Chef with the correct settings.

## Setup

Will install curl if it's missing using apt-get, as well as rvm, ruby 2.2 and Chef. The
gem librarian-chef will also be installed to the system.

```bash
	./setup
```

## Running

This will run Chef in client mode, first for a system install using the system cookbook then
for a user setup using the user cookbook.

### Usage
```
Usage: ./run.sh [--user|--system]
       ./run.sh --help

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

## License 

This project is released under the ISC license. See [LICENSE](LICENSE).
