import 'package:client/env.dart';

import 'domain/core/constants/env.dart';

class ConfigEnvironments {
  static const String _currentEnvironments = Env.appEnv;
  static final List<Map<String, String>> _availableEnvironments = [
    {
      'env': LOCAL,
      'appDomain': 'goldcoders.test',
      'apiDomain': 'goldcoders.test',
      'apiPrefix': 'api/',
      'apiVersion': 'v1',
    },
    {
      'env': STAGING,
      'appDomain': 'staging.goldcoders.dev',
      'apiDomain': 'staging.goldcoders.test',
      'apiPrefix': 'api/',
      'apiVersion': 'v1',
    },
    {
      'env': PRODUCTION,
      'appDomain': 'goldcoders.dev',
      'apiDomain': 'api.goldcoders.dev',
      'apiPrefix': '',
      'apiVersion': 'v1',
    },
  ];

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == _currentEnvironments,
    );
  }
}
