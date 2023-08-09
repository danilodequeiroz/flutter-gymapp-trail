import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_common/colors.dart';
import 'package:flutter_gymapp/decoration/auth_text_field_decoration.dart';
import 'package:flutter_gymapp/localization/localization.dart';
import 'package:flutter_gymapp/ui/ui_screen_gym_exercise.dart';
import 'package:flutter_gymapp/validation/auth_form_validator.dart';

class ScreenAuth extends StatefulWidget {
  const ScreenAuth({super.key});

  @override
  State<ScreenAuth> createState() => _ScreenAuthState();
}

class _ScreenAuthState extends State<ScreenAuth> {
  bool requireLogin = true;
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _password2Controller = TextEditingController();
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = "foo@bar.nl";
    _nameController.text = "Daniel Fraga";
    _passwordController.text = "34en8*ggHV!R8qw&\$#V";
    _password2Controller.text = "34en8*ggHV!R8qw&\$#V";
  }

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
                          controller: _emailController,
                          decoration:
                              AuthTextFieldDecoration.getCustomInputDecoration(
                                  appLocalization(context).formEmailKeyLabel),
                          validator: (value) =>
                              AuthFormValidator(context: context)
                                  .emailValidator(value),
                        ),
                        const SizedBox(height: 8),
                        TextFormField(
                          controller: _passwordController,
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
                            visible: !requireLogin,
                            child: Column(
                              children: [
                                const SizedBox(height: 8),
                                TextFormField(
                                  controller: _password2Controller,
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
                                  controller: _nameController,
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
                            child: Text((requireLogin)
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
                            child: Text((requireLogin)
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
      requireLogin = !requireLogin;
    });
  }

  void mainButtonClicked() {
    if (_formKey.currentState?.validate() ?? false) {
      debugPrint("Form valido");
      validatedFormClick();
    } else {
      debugPrint("Form inválido");
    }
  }

  void validatedFormClick(){
    if(requireLogin){
      loginClicked();
    }else{
      signupClicked();
    }
  }

  void loginClicked(){
    debugLogFormInputs();
  }

  void signupClicked(){
    debugLogFormInputs();
  }

  void debugLogFormInputs(){
    debugPrint("${_emailController.text}  ${_passwordController.text} ${_password2Controller.text}  ${_nameController.text}");
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
