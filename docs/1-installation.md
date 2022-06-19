# Installation

## Requirements

- Dart
- Flutter
- [FVM](https://fvm.app/docs/getting_started/installation)
- vscode (optional)


## Set Up and Usage
Note: I assumed you have installed dart ,and Flutter version Manager (FVM) if not please google how to install it

1. clone the project

```sh
git clone git@${optional_git_username}github.com:goldcoders/client.git ${PROJECTNAME}
```
Legends:
- `optional_git_username` if you set your ssh config you need this to properly map to your ssh
- `PROJECTNAME` the folder that would be produce after running git clone command

2. Install Dependencies

```
fvm use 3.0.2
fvm flutter pub get
```

open vscode then open command palatte <kbd>Ctrl/CMD</kbd>+<kbd>SHIFT</kbd>+<kbd>P</kbd> then type `Flutter: Change SDK` select 3.0.2