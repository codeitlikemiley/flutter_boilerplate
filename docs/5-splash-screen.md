# [Adding Native Splash Screen](https://pub.dev/packages/flutter_native_splash)

## SetUp and Usage

1. Update config at `flutter_native_splash.yaml`

```yaml
flutter_native_splash:

  color: "#12B886"
  #background_image: "assets/background.png"

  image: assets/images/splash_logo.png
```
2. add images to `assets/images/` that you want to use as splash screen

3. Generate Splash Screen
- run command: `flutter pub run flutter_native_splash:create`