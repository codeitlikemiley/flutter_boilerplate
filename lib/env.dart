import 'package:envify/envify.dart';

part 'env.g.dart';

@Envify(path: '.env')
abstract class Env {
  static const String appEnv = _Env.appEnv;
  static const String appName = _Env.appName;
  static const String appVersion = _Env.appVersion;
  static const String appBundleId = _Env.appBundleId;
  static const String appAppleId = _Env.appAppleId;
}
