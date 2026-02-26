import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'core/i18n/translations.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // --- i18n: resolve from device locale (slang) ---
  LocaleSettings.useDeviceLocale();

  // --- Window configuration (desktop only) ---
  await windowManager.ensureInitialized();
  const windowOptions = WindowOptions(
    size: Size(1280, 800),
    minimumSize: Size(900, 600),
    center: true,
    title: 'Hashpod',
    titleBarStyle: TitleBarStyle.normal,
    backgroundColor: Color(0xFF0D1117),
  );
  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(
    // TranslationProvider wraps the app so slang can rebuild on locale change.
    TranslationProvider(
      child: const ProviderScope(
        child: HashpodApp(),
      ),
    ),
  );
}

class HashpodApp extends ConsumerWidget {
  const HashpodApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Hashpod',
      debugShowCheckedModeBanner: false,

      // --- Theme ---
      theme: HashpodTheme.dark,
      darkTheme: HashpodTheme.dark,
      themeMode: ThemeMode.dark,

      // --- Localization (slang + Flutter delegates) ---
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // --- Router ---
      routerConfig: router,
    );
  }
}
