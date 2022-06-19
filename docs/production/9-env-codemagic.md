# List of ENV needs by our App for Production

```toml
// cat key.json from account service and copy it and paste
GCLOUD_SERVICE_ACCOUNT_CREDENTIALS=
// note dont encrypt it with base64 when copying, the encryption will happen on Codemagic Ui Editor
// but if we are doing it on the codemagic.yaml we need to `base64` encode it

//
APP_STORE_CONNECT_PRIVATE_KEY=
APP_STORE_CONNECT_KEY_IDENTIFIER=
APP_STORE_CONNECT_ISSUER_ID=
```

on local environment this should be added on your .zshenv file or .zshrc or .zprofile or .profile

other ENV needed are located at our .env.example
we also need that to be available in our Code magic CI/CD env pipeline


Note: Some of the ENV needs to be created on .env even after passing it as ENV VAR
an extra script should be run

Post-clone script:
```
cat <<EOF > .env
APP_ENV=$APP_ENV
APP_NAME=$APP_NAME
APP_VERSION=$APP_VERSION
APP_BUNDLE_ID=$APP_BUNDLE_ID
APP_APPLE_ID=$APP_APPLE_ID
EOF
```

Note: we also need to run build runner or our code wont pass in test and wont compile
Pre-test script:
```
flutter pub run build_runner build
```

As of Now the version we are supporting in Flutter is
FVM: 3.0.2