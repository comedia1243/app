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

Future<String?> validateCPFCopy(String cpf) async {
  // check if the cpf is valid or not
  // Remove any non-numeric characters from the CPF
  String cleanedCPF = cpf.replaceAll(RegExp(r'\D'), '');

  // Check if the CPF has 11 digits
  if (cleanedCPF.length != 11) {
    return 'CPF must have 11 digits';
  }

  // Check if all digits are the same
  if (cleanedCPF.runes.toSet().length == 1) {
    return 'CPF cannot have all digits the same';
  }

  // Calculate the first verification digit
  int sum = 0;
  for (int i = 0; i < 9; i++) {
    sum += int.parse(cleanedCPF[i]) * (10 - i);
  }
  int firstVerificationDigit = (sum * 10) % 11;

  // Calculate the second verification digit
  sum = 0;
  for (int i = 0; i < 10; i++) {
    sum += int.parse(cleanedCPF[i]) * (11 - i);
  }
  int secondVerificationDigit = (sum * 10) % 11;

  // Check if the verification digits match the CPF
  if (int.parse(cleanedCPF[9]) != firstVerificationDigit ||
      int.parse(cleanedCPF[10]) != secondVerificationDigit) {
    return 'Invalid CPF';
  }

  return null;
}
