import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gymapp/_common/colors.dart';

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
                          AppLocalizations.of(context).appTitle,
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
                          decoration: const InputDecoration(label: Text("E-mail")),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(label: Text("Senha")),
                        ),
                        Visibility(
                            visible: !requireLoggin,
                            child: Column(
                              children: [
                                TextFormField(
                                  obscureText: true,
                                  decoration:
                                  const InputDecoration(label: Text("Confirmar senha")),
                                ),
                                TextFormField(
                                  decoration:
                                  const InputDecoration(label: Text("Nome")),
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
                            child: Text((requireLoggin) ? "Logar" : "Cadastrar")),
                        const Divider(),
                        TextButton(
                            onPressed: () {
                              chooseBetweenLogginAndSignUpAndSetState();
                            },
                            child: Text((requireLoggin)
                                ? "Ainda não tem conta, cadastre-se clicando aqui"
                                : "Já tem conta, logue-se clicando aqui")),
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
