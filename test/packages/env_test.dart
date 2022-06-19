import 'package:client/domain/core/constants/env.dart';
import 'package:client/env.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('check Envify is working for Production', () {
    const appEnv = Env.appEnv;

    expect(appEnv, LOCAL);
  });
}
