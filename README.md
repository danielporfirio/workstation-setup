# workstation-setup

This project is based on the [Pivotal workstation-setup](https://github.com/pivotal/workstation-setup/) and is intended to automate the process of configuring a new machine using a simple [Bash](https://www.gnu.org/software/bash/) script.
## Download

```sh
git clone https://github.com/danielporfirio/workstation-setup.git ~/workspace && cd ~/workspace
```

## Usage

If you're setting up an machine choose which languages to install:

```sh
# you can remove unnecessary languages when you run the command
./setup.sh java ruby node golang c docker

# or use the 'engineer' shortcut to install all languages
./setup.sh engineer

```