# Adding Launching Icons

- reference: [official docs](https://docs.flutter.dev/deployment/android#adding-a-launcher-icon)

## SetUp and Usage

1. Add Images to `assets/images`

- android_launcher_icon.png
- ios_launcher_icon.png

2. Generate Icons for iOs and Android

run command:

`fmv flutter pub run flutter_launcher_icons:main`

or

`fvm flutter pub run flutter_launcher_icons:main -f ./flutter_launcher_icons.yaml`

Note: we can change the file to any if we have for example flavors for dev,prod,test

3. for more configuration change this file `flutter_launcher_icons.yaml`

```yaml
flutter_icons:
  # TODO(goldcoders): add your icons in assets/images
  image_path_android: "assets/images/android_launcher_icon.png"
  image_path_ios: "assets/images/ios_launcher_icon.png"
  android: true # can specify file name here e.g. "ic_launcher"
  ios: true # can specify file name here e.g. "My-Launcher-Icon"
  remove_alpha_ios: true
  # adaptive_icon_background: "assets/images/christmas-background.png" # only available for Android 8.0 devices and above
  # adaptive_icon_foreground: "assets/images/icon-foreground-432x432.png" # only available for Android 8.0 devices and above

# TODO(goldcoders): for flutter flavors configure
# if we wanna use flutter flavors read this link:
# https://github.com/fluttercommunity/flutter_launcher_icons/tree/master/example/flavors
# for advance example :
# https://github.com/fluttercommunity/flutter_launcher_icons/tree/master/example/default_example
```