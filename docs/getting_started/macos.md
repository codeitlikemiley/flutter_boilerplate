# Getting Started On Mac OS

## Install dart with brew

If you dont have brew installed , please refer to the guide on [brew.sh](http://brew.sh)

run command: `brew install dart`

Note: dart is added to path automatically by homebrew

## Update Path (if you have issue with command not found)

Edit your .zshrc or .zshenv

```
// if you want to use dart that comes with FVM
export PATH="$PATH:$HOME/fvm/default/bin"
// Note: this is needed for you to use FVM or GetX Cli
export PATH="$HOME/.pub-cache/bin":"$PATH"
```

## Install FVM

> preferred way to install

```
brew tap leoafarias/fvm
brew install fvm
```

or you can still this with
`dart pub global activate fvm`

## Install Flutter stable `3.0.2`

Install this flutter version using command: `fvm install 3.0.2`

## Clone The Repo over SSH

run command:
```sh
git clone git@${optional_git_username}github.com:goldcoders/client.git ${PROJECTNAME}
```

Legends:
- `optional_git_username` if you set your ssh config you need this to properly map to your ssh
- `PROJECTNAME` the folder that would be produce after running git clone command


// ~/.ssh/config
```sh
Host username.github.com
    HostName github.com
    User git
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_username
```

Ensure your ssh pub key is uploaded on your github account and you are invited as collaborator on the project

## Use FVM with the version `3.0.2`

run the command `fvm use` if prompted for options choose `3.0.2`

## Changing Flutter SDK Version

Note:You need to have dart and flutter vscode extension enable to do this, if you dont please install it first

1. Press `cmd+shift+p` to trigger show all commands  then type `flutter change sdk` press enter then choose flutter version `3.0.2`

Note: if for some reason flutter sdk `3.0.2` is not listed we can create .vscode/settings.json with the following content

```json
{
  "dart.flutterSdkPath": "/Users/${USERNAME}/fvm/versions/3.0.2"
}
```

Please change the path accordingly to your User path , dont use mine :)

## Install Dependencies

You can either use terminal and run `fvm flutter pub get` or if your already inside vscode press `cmd+shift+p` then type `flutter get packages`

## Set Up Env Files

use terminal to copy  .env.example to .env and .env.dev

run command: `cp .env.example .env` and `cp .env.example .env.dev`

or if just create file inside vscode named accordingly as `.env.dev` and `.env`

copy the content of .env.example for example:

```sh
APP_NAME=MyApp
```

## Run Build Runner to generate missing dart files

build command: `flutter pub run build_runner build` or use fvm `fvm flutter pub run build_runner build`

## For Continous Development

watch command: `flutter pub run build_runner watch` or use fvm `fvm flutter pub run build_runner watch`

## Run Test
Open vscode Run and Debug on sidebar then choose `Dart Run all Test`

if you dont all things correctly you will have all passing tests

// example results
```sh
✓ check Envify is working for Production
✓ check Envify is working for Development
✓ use mocktailx to mock api request
✓ use mocktail to mock Class Cat
✓ can use mocktail for network images
```

## Common Issue

- Conflicting Output with Build Runner
run command: `flutter pub run build_runner build --delete-conflicting-outputs`

