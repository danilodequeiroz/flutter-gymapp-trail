import 'package:flutter/material.dart';

class AuthFormValidator{
  BuildContext context;

  AuthFormValidator(
      {required this.context});

emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "O e-mail não pode ser vazio.";
  }
  if (value.length < 5) {
    return "O e-mail é muito curto";
  }
  if (!value.contains("@")) {
    return "O e-mail não é valido";
  }
  return null;
}

passwordValidator(String? value) {
  if(value != null && value.length <= 9) {
    return "A senha é curta (min. 9 carácteres).";
  }
  if(!(value?.contains(RegExp(r'[A-Z]')) ?? true)){
    return "A senha deve conter carácter(es) maiúsculo(s).";
  }
  if(!(value?.contains(RegExp(r'[a-z]')) ?? true)){
    return "A senha deve conter carácter(es) minúsculo(s).";
  }
  if(!(value?.contains(RegExp(r'[0-9]')) ?? true)){
    return "A senha deve conter número(os)";
  }
  if(!(value?.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')) ?? true)){
    return "A senha deve conter carácter(es) especial(ais)";
  }
  return null;
}


userNameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "O nome não pode ser vazio.";
  }
  if (value.length < 5) {
    return "O nome é muito curto (min. 5 carácteres).";
  }
  return null;
  }
}