# Getting Started on Windows

## Installing Flutter on windows

for now follow this [official guide](https://docs.flutter.dev/get-started/install/windows)

## Install dart sdk using Scoop

We need a Windows package Manager to quickly Install dart

Please go to [scoop.sh](https://scoop.sh/) to install scoop in your system

Also the version of dart we need is `2.17.3`

1. Install dart `scoop install dart`
1. If you already have dart but version is outdate run `scoop update dart`


## Install FVM

Install FVM using scoop with the command: `dart pub global activate fvm`

## Install Flutter Stable `3.0.2`

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

1. Press `ctrl+shift+p` to trigger show all commands  then type `flutter change sdk` press enter then choose flutter version `3.0.2`

Note: if for some reason flutter sdk `3.0.2` is not listed we can create .vscode/settings.json with the following content

```json
{
    "dart.flutterSdkPath": "C:\\Users\\${USERNAME\\fvm\\versions\\3.0.2"
}
```

Please change the path accordingly to your User path , dont use mine :)

## Install Dependencies

You can either use terminal and run `fvm flutter pub get` or if your already inside vscode press `ctrl+shift+p` then type `flutter get packages`

## Set Up Env Files

use terminal to copy  .env.example to .env and .env.dev

run command: `cp .env.example .env` and `cp .env.example .env.dev`

or if just create file inside vscode named accordingly as `.env.dev` and `.env`

copy the content of .env.example for example:

```sh
APP_NAME=WatchCrunch
APP_DOMAIN=watchcrunch.com
APP_URL=https://watchcrunch.com
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

## Running on Debug Mode
1. You can launch your emulators using Android Studio
1. If you dont have emulators , then create emulator in Android Studio with `android api 29` with any devices
1. You can also launch emulator if you already have created it using vscode , press `ctrl+shift+p` then type `Flutter: Lanch Emulator` then select your emulator
1. Or Quickly Use Your Android Phone , you can follow this [guide](https://flutter-examples.com/run-test-flutter-apps-directly-on-real-android-device/?msclkid=8b3aa766a53c11ec8ee278752bea3365)
1. Press F5 or press `ctrl+shift+p` then type `Debug: Start Debugging`


## Common Issue

- Conflicting Output with Build Runner
run command: `flutter pub run build_runner build --delete-conflicting-outputs`

