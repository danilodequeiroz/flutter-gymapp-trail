import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_common/colors.dart';
import 'package:flutter_gymapp/decoration/auth_text_field_decoration.dart';
import 'package:flutter_gymapp/localization/localization.dart';
import 'package:flutter_gymapp/ui/ui_screen_gym_exercise.dart';
import 'package:flutter_gymapp/validation/validator.dart';

class ScreenAuth extends StatefulWidget {
  const ScreenAuth({super.key});

  @override
  State<ScreenAuth> createState() => _ScreenAuthState();
}

class _ScreenAuthState extends State<ScreenAuth> {
  bool requireLoggin = true;
  final _formKey = GlobalKey<FormState>();

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
              key: _formKey,
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
                          decoration:
                              AuthTextFieldDecoration.getCustomInputDecoration(
                                  appLocalization(context).formEmailKeyLabel),
                          validator: (value) =>
                              AuthFormValidator(context: context)
                                  .emailValidator(value),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          obscureText: true,
                          decoration:
                              AuthTextFieldDecoration.getCustomInputDecoration(
                                  appLocalization(context)
                                      .formPasswordKeyLabel),
                          validator: (value) =>
                              AuthFormValidator(context: context)
                                  .passwordValidator(value),
                        ),
                        Visibility(
                            visible: !requireLoggin,
                            child: Column(
                              children: [
                                const SizedBox(height: 8),
                                TextFormField(
                                  obscureText: true,
                                  decoration: AuthTextFieldDecoration
                                      .getCustomInputDecoration(
                                          appLocalization(context)
                                              .formConfirmPasswordKeyLabel),
                                  validator: (value) =>
                                      AuthFormValidator(context: context)
                                          .passwordValidator(value),
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  decoration: AuthTextFieldDecoration
                                      .getCustomInputDecoration(
                                          appLocalization(context)
                                              .formNameKeyLabel),
                                  validator: (value) =>
                                      AuthFormValidator(context: context)
                                          .userNameValidator(value),
                                )
                              ],
                            )),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              mainButtonClicked();
                            },
                            child: Text((requireLoggin)
                                ? appLocalization(context).formLoggInKeyLabel
                                : appLocalization(context).formSignupKeyLabel)),
                        ElevatedButton(
                            onPressed: () {
                              // navigateAndPopupFromBottomToTop();
                              // navigateAndSlideFromRightEdgeOverPresentScreen();
                            },
                            child: const Text("bypass loggin requirement")),
                        const Divider(),
                        TextButton(
                            onPressed: () {
                              chooseBetweenLogginAndSignUpAndSetState();
                            },
                            child: Text((requireLoggin)
                                ? appLocalization(context)
                                    .formDontHaveAccountKeyLabel
                                : appLocalization(context)
                                    .formAlreadyHaveAccountKeyLabel)),
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

  void mainButtonClicked() {
    if (_formKey.currentState?.validate() ?? false) {
      debugPrint("Form valido");
    } else {
      debugPrint("Form inválido");
    }
  }

  void navigateAndPopupFromBottomToTop() {
    Route createRoute(Widget page) {
      return CupertinoPageRoute<bool>(
        fullscreenDialog: true,
        builder: (BuildContext context) => const ScreenGymExercise(),
      );
    }

    Navigator.of(context, rootNavigator: true)
        .push(createRoute(const ScreenGymExercise()));
  }

  void navigateAndSlideFromRightEdgeOverPresentScreen() {
    Route createRoute(Widget page) {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );
    }

    Navigator.of(context).push(createRoute(const ScreenGymExercise()));
  }
}
