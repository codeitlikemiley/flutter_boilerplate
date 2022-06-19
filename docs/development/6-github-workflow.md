# Github Workflow Test and Build Automation

## SetUp and Usage

1. go to .github/workflows

2. choose what workflow you want.

- android_main.yaml
- ios_android_main.yaml
- test_only.yaml

Note: Build Minutes cost a lot if using macOS VM ie. `ios_android_main.yaml` config

> Please Read the yaml file since there are comments there on how to use SECRET ENV KEYS inside github

3. Set it to your main.yaml

```sh
cp .github/workflows/test_only .github/workflows/main.yaml
```