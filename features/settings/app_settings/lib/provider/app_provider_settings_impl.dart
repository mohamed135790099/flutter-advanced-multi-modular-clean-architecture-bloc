import 'package:injectable/injectable.dart';

import 'app_provider_settings.dart';

@Injectable(as: AppProviderSettings, env: [Environment.prod])
class ProdAppProviderSettingsImpl extends AppProviderSettings {
  @override
  String getAppLanguage() {
    return 'en';
  }

  @override
  String getThemeType() {
    return 'light';
  }
}

@Injectable(as: AppProviderSettings, env: [Environment.dev])
class DevAppProviderSettingsImpl extends AppProviderSettings {
  @override
  String getAppLanguage() {
    return 'Arabic';
  }

  @override
  String getThemeType() {
    return 'dark';
  }
}