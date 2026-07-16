import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tag_archiver_app/assets/i18n/strings.g.dart';

import 'routing/routes.dart';

void main() =>
    runApp(ProviderScope(child: TranslationProvider(child: const MyApp())));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized(); // add this
    LocaleSettings.useDeviceLocale();
    return MaterialApp.router(routerConfig: router);
  }
}
