# Overview
This script's main goal is to download and install Dart and Flutter SDKs automatically on a 42 Network School Computer.

Due to the school's limitations on privileges and session storage (5 Gb), I have decided to make this script to install Dart and Flutter SDK on the machine's local storage ( ```~/goinfre``` ).

The script will skip installation if Dart & Flutter SDKs are already present.

# Usage
We will configure the script so it will run on each new session, if Flutter or Dart are missing it will be installed automatically.

Run the following commands to install and configure the script to run at startup

```bash
git clone https://github.com/yel-hadd/42-Flutter-Dart-SDK-Local-Install.git flutter_script
cd flutter_script
script_dir=$(pwd)
script_path="$script_dir/flutter_init.sh"
chmod +x $script_path
echo $script_path >> ~/.zshrc
```