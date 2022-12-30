# Overview
This script's main goal is to download and install Dart and Flutter SDKs automatically on a 42 Network School Computer.

Due to the school's limitations on privileges and session storage (5 Gb), I have decided to make this script to install Dart and Flutter SDK on the machine's local storage ( ```~/goinfre``` ).

The script will skip installation if Dart & Flutter SDKs are already present.

# Usage
Just add the following line to ```~/.zshrc``` file
```bash
zsh ~/path/to/script/flutter_init.sh
```