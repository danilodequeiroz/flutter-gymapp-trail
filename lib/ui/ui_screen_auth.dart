import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_common/colors.dart';
import '../localization/localization.dart';

class ScreenAuth extends StatefulWidget {
  const ScreenAuth({super.key});

  @override
  State<ScreenAuth> createState() => _ScreenAuthState();
}

class _ScreenAuthState extends State<ScreenAuth> {
  bool requireLoggin = true;

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(
                          "assets/images/illustrations/logo.png",
                          height: 128,
                        ),
                        Text(
                          appLocalization(context).appTitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        TextFormField(
                          decoration: InputDecoration(label: Text(appLocalization(context).formEmailKeyLabel)),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(label: Text(appLocalization(context).formPasswordKeyLabel)),
                        ),
                        Visibility(
                            visible: !requireLoggin,
                            child: Column(
                              children: [
                                TextFormField(
                                  obscureText: true,
                                  decoration:
                                  InputDecoration(label: Text(appLocalization(context).formConfirmPasswordKeyLabel)),
                                ),
                                TextFormField(
                                  decoration:
                                  InputDecoration(label: Text(appLocalization(context).formNameKeyLabel)),
                                )
                              ],
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              debugPrint("Clicked Loggin");
                            },
                            child: Text((requireLoggin)
                                ? appLocalization(context).formLoggInKeyLabel
                                : appLocalization(context).formSignupKeyLabel)),
                        const Divider(),
                        TextButton(
                            onPressed: () {
                              chooseBetweenLogginAndSignUpAndSetState();
                            },
                            child: Text((requireLoggin)
                                ? appLocalization(context).formDontHaveAccountKeyLabel
                                : appLocalization(context).formAlreadyHaveAccountKeyLabel)),
                      ]),
                ),
              ),
            ),
          )
        ]));
  }

  void chooseBetweenLogginAndSignUpAndSetState() {
    setState(() {
      requireLoggin = !requireLoggin;
    });
  }
}
