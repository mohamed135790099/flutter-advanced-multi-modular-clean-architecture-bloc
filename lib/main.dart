import 'package:advanced_multi_modular_clean_architecture_bloc/di/injection.dart';
import 'package:app_settings/provider/app_provider_settings.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Environment.prod);
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Clean Architecture',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appProviderSettings = getIt<AppProviderSettings>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Advanced Clean Architecture'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("App Language ${appProviderSettings.getAppLanguage()}"),
            Text("App Theme ${appProviderSettings.getThemeType()}"),
          ],
        ),
      )
    );
  }
}