import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_common/colors.dart';

const double two = 2;
const double four = 4;
const double eight = 16;
const double sixteen = 16;
const double sixtyFour = 64;

class AuthTextFieldDecoration {
  static InputDecoration getCustomInputDecoration(String label) {
    return InputDecoration(
        hintText: label,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.only(
            left: sixteen, right: sixteen, top: eight, bottom: eight),
        border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(sixtyFour)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(sixtyFour),
          borderSide: const BorderSide(color: Colors.black, width: two),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sixtyFour),
            borderSide: const BorderSide(
                color: SelfColors.blue_0xff00ADFA, width: four)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sixtyFour),
            borderSide: const BorderSide(color: Colors.pink, width: two)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sixtyFour),
            borderSide: const BorderSide(color: Colors.pink, width: four))
    );
  }
}
