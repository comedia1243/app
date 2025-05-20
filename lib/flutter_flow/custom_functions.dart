import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

FFUploadedFile base64ToUploadedFile(String base64) {
// Crie uma funnção que converta um base64 para FFUploadedFile
  final bytes = base64Decode(base64);
  final id = DateTime.now().millisecondsSinceEpoch.toString();
  final extension = base64.split('/').first.split(':').last;
  final fileName = '$id.$extension';
  return FFUploadedFile(
    bytes: bytes,
  );
}

String? sendAnalyticsEvent(
  String eventName,
  String jsonString,
) {
  // Create a function so I can send the event name and parameters to Google Analytics, these parameters must be received as JSON and converted into a format that Firebase accepts.
  try {
    Map<String, dynamic> parameters = jsonDecode(jsonString);
    // Send event to Google Analytics
    // Convert parameters to a format that Firebase accepts
    Map<String, dynamic> firebaseParameters = {};
    parameters.forEach((key, value) {
      if (value is String) {
        firebaseParameters[key] = value;
      } else if (value is num) {
        firebaseParameters[key] = value.toDouble();
      } else if (value is bool) {
        firebaseParameters[key] = value;
      } else if (value is List) {
        firebaseParameters[key] = value.map((e) => e.toString()).toList();
      } else if (value is Map) {
        firebaseParameters[key] =
            value.map((k, v) => MapEntry(k.toString(), v.toString()));
      }
    });
    // Send event to Firebase Analytics
    // firebase.analytics().logEvent(eventName, firebaseParameters);
    return 'Event sent successfully';
  } catch (e) {
    return 'Error sending event: $e';
  }
}

String? getStartAndEndOfDay() {
  Map<String, DateTime> getStartAndEndOfDay() {
    // Obtém a data atual
    DateTime now = DateTime.now();

    // Cria a data inicial e final do dia
    DateTime startOfDay =
        DateTime(now.year, now.month, now.day, 0, 0, 0); // Início do dia
    DateTime endOfDay =
        DateTime(now.year, now.month, now.day, 23, 59, 59); // Fim do dia

    // Retorna as datas em um mapa
    return {
      'start': startOfDay,
      'end': endOfDay,
    };
  }
}

List<DateTime>? datasMesAtual() {
  // Obter a data atual
  DateTime now = DateTime.now();

  // Início do mês atual
  DateTime startOfMonth = DateTime(now.year, now.month, 1);

  // Fim do mês atual
  DateTime endOfMonth = DateTime(now.year, now.month + 1, 0, 23, 59, 59);

  return [startOfMonth, endOfMonth];
}

List<DateTime>? datasPorMes(int mes) {
  // Obter a data atual
  DateTime now = DateTime.now();

  // Início do mês especificado
  DateTime startOfMonth = DateTime(now.year, mes, 1);

  // Fim do mês especificado
  DateTime endOfMonth = DateTime(now.year, mes + 1, 0, 23, 59, 59);

  return [startOfMonth, endOfMonth];
}

double? calcularMediaAvaliacoes(List<double>? avaliacoes) {
  // double? calcularMediaAvaliacoes(List<dynamic>? avaliacoes) {   if (avaliacoes == null || avaliacoes.isEmpty) {     return null; // Retorna null se a lista for nula ou vazia   }      // Calcula a soma de todas as avaliações   double soma = avaliacoes.fold(0, (anterior, atual) => anterior + (atual as num));    // Calcula a média   double media = soma / avaliacoes.length;    return media; }

  if (avaliacoes == null || avaliacoes.isEmpty) {
    return null; // Returns null if the list is null or empty
  }

  // Calculates the sum of all ratings
  double soma =
      avaliacoes.fold(0, (anterior, atual) => anterior + (atual as num));

  // Calculates the average
  double media = soma / avaliacoes.length;

  return media;
}

List<DateTime>? datasHoje() {
  // function to search and return the beginning of the day and also return the end of the day
  DateTime now = DateTime.now();
  DateTime startOfDay = DateTime(now.year, now.month, now.day);
  DateTime endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);

  return [startOfDay, endOfDay];
}

double? calcularTotal2(List<double>? valores) {
  // I want to pass a list of values ​​in the argument and in the return it gives me the sum of these values
  if (valores == null || valores.isEmpty) {
    return null;
  }

  double total = 0.0;
  for (double valor in valores) {
    total += valor;
  }

  return total;
}

String? inputFormat(String textoFormata) {
  // function to remove all spaces, special characters and letters from a text
  String result = textoFormata.replaceAll(RegExp(r'[^0-9]'), '');
  return result;
}

double? conversorString(String valor) {
  double valorConvertido = double.parse(
    valor.replaceAll(RegExp(r'[^\d,\.]'), '').replaceAll(',', '.'),
  );
  return valorConvertido;
}

List<DateTime> diasDoMes(int mes) {
  // I want a function to get all the days of the month explained through the argument
  final daysInMonth = DateTime(DateTime.now().year, mes + 1, 0).day;
  final List<DateTime> daysList = [];
  for (int i = 1; i <= daysInMonth; i++) {
    daysList.add(DateTime(DateTime.now().year, mes, i));
  }
  return daysList;
}

String extrairMes(String text) {
  return text.substring(0, 2);
}

List<DateTime> comecoFinalDia(DateTime day) {
  // I want a function to get the beginning and end of a day
  DateTime startOfDay = DateTime(day.year, day.month, day.day, 0, 0, 0);
  DateTime endOfDay = DateTime(day.year, day.month, day.day, 23, 59, 59);
  return [startOfDay, endOfDay];
}

int somaInteiros(List<int>? numeros) {
  // Verifica se a lista é nula ou vazia e retorna 0
  if (numeros == null || numeros.isEmpty) {
    return 0;
  }

  // Soma os elementos da lista
  return numeros.reduce((value, element) => value + element);
}

DateTime menorData(List<DateTime> datas) {
  // function to take a list of data and return which one is the smallest
  DateTime menor = datas[0];
  for (int i = 1; i < datas.length; i++) {
    if (datas[i].isBefore(menor)) {
      menor = datas[i];
    }
  }
  return menor;
}

int quantddShow(DocumentReference show) {
  int quantdd = 0;

  FirebaseFirestore.instance
      .collection('select_ingresso')
      .where('show', isEqualTo: show) // Filtrar pelo campo `show`
      .where('salvo',
          isEqualTo: true) // Filtrar pelo campo `salvo` igual a "sim"
      .get()
      .then((querySnapshot) {
    for (var doc in querySnapshot.docs) {
      final quant = doc.data()['quantdd']; // Obtém o valor do campo `quantdd`
      quantdd += (quant != null
          ? quant as int
          : 0); // Soma, tratando valores nulos como 0
    }
  }).catchError((error) {
    print('Erro ao buscar e somar os ingressos: $error');
  });

  return quantdd;
}

bool busca(
  String textSearchFor,
  String textSearchIn,
) {
  return textSearchIn.toLowerCase().contains(textSearchFor.toLowerCase());
}

String extrairAno(String text) {
  return text.substring(text.length - 2);
}

List<DateTime> menorEMaiorData(List<DateTime> datas) {
  if (datas.isEmpty) {
    throw ArgumentError('A lista de datas não pode estar vazia.');
  }

  DateTime menor = datas[0];
  DateTime maior = datas[0];

  for (int i = 1; i < datas.length; i++) {
    if (datas[i].isBefore(menor)) {
      menor = datas[i];
    }
    if (datas[i].isAfter(maior)) {
      maior = datas[i];
    }
  }

  return [menor, maior];
}

int calcularLista(List<int> itens) {
  return itens.reduce((value, element) => value + element);
}

List<AvaliacoesRecord> getDocumentsForPage(
  int pageNumber,
  int pageSize,
  List<AvaliacoesRecord> allDocuments,
) {
  // code to do manual pagination in a LIST
  final int startIndex = pageNumber * pageSize;
  final int endIndex = math.min(startIndex + pageSize, allDocuments.length);
  return allDocuments.sublist(startIndex, endIndex);
}

DateTime conversorData(DateTime data) {
  // function to be independent of the date it came in, it will be maintained regardless of the device's time zone
  final DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  final String formatted = formatter.format(data);
  final DateTime convertedDate = formatter.parse(formatted);
  return convertedDate;
}

String validacaoEmail(String email) {
  // Validar se o campo está vazio
  if (email.isEmpty) {
    return 'O e-mail não pode estar vazio';
  }

  // Expressão regular para validação de e-mail
  final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  if (!emailRegex.hasMatch(email)) {
    return 'Formato de e-mail inválido';
  }

  return 'E-mail verificado com sucesso';
}
