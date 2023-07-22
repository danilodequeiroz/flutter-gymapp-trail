import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gymapp/_common/colors.dart';

class ScreenAuth extends StatelessWidget {
  const ScreenAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: SelfGradient.authScreenBlueGradient,
            )),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "assets/images/illustrations/logo.png",
                  height: 128,
                ),
                Text(
                  AppLocalizations.of(context).appTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ])
        ]));
  }
}
