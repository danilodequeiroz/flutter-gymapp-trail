import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ScreenAuth extends StatelessWidget{
  const ScreenAuth({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            "assets/images/illustrations/logo.png",
            height: 128,
          ),
           Text(
               AppLocalizations
                   .of(context)
                   .appTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize:  48,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          )
        ],
      )
    );
  }
}