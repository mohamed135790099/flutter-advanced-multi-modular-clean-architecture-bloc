import 'package:app_settings/di/injection.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:advanced_multi_modular_clean_architecture_bloc/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String environment){
  getIt.init(environment: environment);
  configureAppSettingsDependencies(getIt,environment);
}
