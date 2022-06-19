import 'package:client/domain/core/constants/env.dart';
import 'package:client/env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('check Envify is working for Production', () {
    // Arrange
    const String expectedAppEnv = LOCAL;
    const String expectedAppName = 'Flutter Clean Architecture';
    const String expectedAppVersion = '1.0.0';
    const String expectedAppBundleId = 'com.goldcoders.client';
    const String expectedAppAppleId = '123456789';
    const appEnv = Env.appEnv;
    const appName = Env.appName;
    const appVersion = Env.appVersion;
    const appBundleId = Env.appBundleId;
    const appAppleId = Env.appAppleId;

    expect(appEnv, expectedAppEnv);
    expect(appName, expectedAppName);
    expect(appVersion, expectedAppVersion);
    expect(appBundleId, expectedAppBundleId);
    expect(appAppleId, expectedAppAppleId);
  });
}
