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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> generateAndDownloadPDF(
  List<String> nomes,
  List<String> datas,
  List<String> valores,
  List<String> emails,
  List<String> telefones,
  String tituloEsquerda,
  String tituloDireita,
  String textoAdicional,
  String logoUrl,
  DateTime dataGeracao,
) async {
  if (nomes.length != datas.length ||
      nomes.length != valores.length ||
      nomes.length != emails.length ||
      nomes.length != telefones.length) {
    throw Exception(
        'O número de nomes, datas, valores, e-mails e telefones deve ser o mesmo.');
  }

  const int maxLinesPerPage = 12;

  Uint8List? logoBytes;
  try {
    final response = await http.get(Uri.parse(logoUrl));
    if (response.statusCode == 200) {
      logoBytes = response.bodyBytes;
    } else {
      throw Exception(
          'Falha ao carregar o logotipo. Status: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Erro ao buscar o logotipo: $e');
  }

  final pdf = pw.Document();

  String dataFormatada =
      "${dataGeracao.day.toString().padLeft(2, '0')}/${dataGeracao.month.toString().padLeft(2, '0')}/${dataGeracao.year}, ${dataGeracao.hour}:${dataGeracao.minute.toString().padLeft(2, '0')}";

  for (int i = 0; i < nomes.length; i += maxLinesPerPage) {
    final pageNomes = nomes.sublist(
        i,
        (i + maxLinesPerPage > nomes.length)
            ? nomes.length
            : i + maxLinesPerPage);
    final pageDatas = datas.sublist(
        i,
        (i + maxLinesPerPage > datas.length)
            ? datas.length
            : i + maxLinesPerPage);
    final pageValores = valores.sublist(
        i,
        (i + maxLinesPerPage > valores.length)
            ? valores.length
            : i + maxLinesPerPage);
    final pageEmails = emails.sublist(
        i,
        (i + maxLinesPerPage > emails.length)
            ? emails.length
            : i + maxLinesPerPage);
    final pageTelefones = telefones.sublist(
        i,
        (i + maxLinesPerPage > telefones.length)
            ? telefones.length
            : i + maxLinesPerPage);

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4.landscape,
        build: (pw.Context context) => [
          if (logoBytes != null)
            pw.Center(
              child:
                  pw.Image(pw.MemoryImage(logoBytes), width: 150, height: 100),
            ),
          pw.SizedBox(height: 10),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(
                tituloEsquerda,
                style:
                    pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
              ),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.Text(
                    tituloDireita,
                    style: pw.TextStyle(
                        fontSize: 18, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.Text(
                    dataFormatada,
                    style: pw.TextStyle(
                        fontSize: 12, fontStyle: pw.FontStyle.italic),
                  ),
                ],
              ),
            ],
          ),
          pw.SizedBox(height: 15),
          pw.Text(
            textoAdicional,
            style: pw.TextStyle(fontSize: 14, fontStyle: pw.FontStyle.italic),
          ),
          pw.SizedBox(height: 20),
          pw.Table.fromTextArray(
            headers: [
              'Nome do Cliente',
              'Data da Compra',
              'Valor a Receber',
              'E-mail do Cliente',
              'Telefone do Cliente'
            ],
            data: List.generate(
              pageNomes.length,
              (index) => [
                pageNomes[index].trim().isEmpty ? '(vazio)' : pageNomes[index],
                pageDatas[index].trim().isEmpty ? '(vazio)' : pageDatas[index],
                pageValores[index].trim().isEmpty
                    ? '(vazio)'
                    : pageValores[index],
                pageEmails[index].trim().isEmpty
                    ? '(vazio)'
                    : pageEmails[index],
                pageTelefones[index].trim().isEmpty
                    ? '(vazio)'
                    : pageTelefones[index],
              ],
            ),
            border: pw.TableBorder.all(),
            headerStyle: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
              fontSize: 12,
            ),
            cellStyle: pw.TextStyle(fontSize: 10),
            headerDecoration: pw.BoxDecoration(color: PdfColors.grey200),
            cellAlignment: pw.Alignment.centerLeft,
          ),
        ],
      ),
    );
  }

  final Uint8List pdfBytes = await pdf.save();

  await Printing.sharePdf(
    bytes: pdfBytes,
    filename: 'bordero.pdf',
  );
}
