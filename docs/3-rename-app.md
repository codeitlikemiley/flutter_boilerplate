## Change the App Name

## SetUp and Usage

1. Make sure you have installed all flutter packages Dependencies

```
fvm flutter pub get
```

2.  Change the Configuration file in `pubspec.yaml`

```yaml
flutter_rename_app_plus:
  application_name: MyApp
  dart_package_name: my_app
  application_id: com.goldcoders.app
  bundle_id: com.goldcoders.app
  android_package_name: com.goldcoders.app
```

3. Run Command in the project folder root directory

```sh
flutter pub run flutter_rename_app_plus
```

4. Change also name in pubspec.yaml
```yaml
name: MyApp
```

5. the project folder to match the changes
```sh
mv PROJECTFOLDER my_app
```

6. change the APP_NAME in `.env`
```yaml
APP_NAME=MyApp
```
