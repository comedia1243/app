// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> validouCPF(String cpf) async {
  // I need a valid CPF checker
  // Remove any non-numeric characters from the CPF
  String cleanedCpf = cpf.replaceAll(RegExp(r'\D'), '');

  // Check if the CPF has 11 digits
  if (cleanedCpf.length != 11) {
    return false;
  }

  // Check if all digits are the same
  if (cleanedCpf.runes.toSet().length == 1) {
    return false;
  }

  // Calculate the first verification digit
  int sum = 0;
  for (int i = 0; i < 9; i++) {
    sum += int.parse(cleanedCpf[i]) * (10 - i);
  }
  int firstVerificationDigit = (sum * 10) % 11;
  if (firstVerificationDigit == 10) {
    firstVerificationDigit = 0;
  }

  // Calculate the second verification digit
  sum = 0;
  for (int i = 0; i < 10; i++) {
    sum += int.parse(cleanedCpf[i]) * (11 - i);
  }
  int secondVerificationDigit = (sum * 10) % 11;
  if (secondVerificationDigit == 10) {
    secondVerificationDigit = 0;
  }

  // Check if the verification digits match the CPF
  if (int.parse(cleanedCpf[9]) == firstVerificationDigit &&
      int.parse(cleanedCpf[10]) == secondVerificationDigit) {
    return true;
  } else {
    return false;
  }
}
