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

String? validateCPF(String cpf) {
  // Remove caracteres não numéricos
  cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');

  // Verifica se o CPF tem 11 dígitos ou se é um número repetido (invalido)
  if (cpf.length != 11 || RegExp(r'^(\d)\1*$').hasMatch(cpf)) {
    return 'CPF inválido';
  }

  // Função para calcular o dígito verificador
  int calculateDigit(List<int> cpfNumbers, int factor) {
    int sum = 0;
    for (var num in cpfNumbers) {
      sum += num * factor--;
    }
    int digit = 11 - (sum % 11);
    return (digit > 9) ? 0 : digit;
  }

  // Converte os caracteres para uma lista de inteiros
  final List<int> cpfNumbers = cpf.split('').map(int.parse).toList();

  // Calcula os dois dígitos verificadores
  final int digit1 = calculateDigit(cpfNumbers.sublist(0, 9), 10);
  final int digit2 = calculateDigit(cpfNumbers.sublist(0, 9)..add(digit1), 11);

  // Verifica se os dígitos calculados batem com os fornecidos
  if (digit1 == cpfNumbers[9] && digit2 == cpfNumbers[10]) {
    return null; // CPF válido
  }

  return 'CPF inválido';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
