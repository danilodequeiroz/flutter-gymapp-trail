import 'package:flutter/material.dart';
import 'package:flutter_gymapp/ui/ui_screen_practice.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logging_to_logcat/logging_to_logcat.dart';
import 'package:logging/logging.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


Future initLogging() async {
  Logger.root.activateLogcat();
  Logger.root.level = Level.ALL;
}

void main() {
  initLogging();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('pt'),
      ],
      home: ScreenPractice(),
    );
  }
}
