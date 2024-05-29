import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/gen/strings.g.dart';
import 'package:flutter_bootstrap/logger.dart';
import 'package:flutter_bootstrap/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // Init
  logger.i('Starting main...');
  WidgetsFlutterBinding.ensureInitialized();
  // i18n
  LocaleSettings.useDeviceLocale();
  // Run
  logger.i('Starting app...');
  runApp(TranslationProvider(child: const ProviderScope(child: MyApp())));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData(useMaterial3: true),
      routerConfig: ref.read(routerProvider),
    );
  }
}
