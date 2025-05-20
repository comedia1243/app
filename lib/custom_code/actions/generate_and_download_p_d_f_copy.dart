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

import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> generateAndDownloadPDFCopy(
  List<String> nomes,
  List<String> datas,
  List<String> valores,
  List<String> emails,
  List<String> telefones,
  String tituloEsquerda,
  String tituloDireita,
  String textoAdicional, // Texto adicional
  String logoUrl, // URL do logotipo
  DateTime dataGeracao, // Data de geração
) async {
  if (nomes.length != datas.length ||
      nomes.length != valores.length ||
      nomes.length != emails.length ||
      nomes.length != telefones.length) {
    throw Exception(
        'O número de nomes, datas, valores, e-mails e telefones deve ser o mesmo.');
  }

  // Definir o número máximo de linhas por página
  const int maxLinesPerPage = 12;

  // Fazer o download da imagem do logotipo
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

  // Criar um documento PDF
  final pdf = pw.Document();

  // Formatar a data de geração
  String dataFormatada =
      "${dataGeracao.day.toString().padLeft(2, '0')}/${dataGeracao.month.toString().padLeft(2, '0')}/${dataGeracao.year}, ${dataGeracao.hour}:${dataGeracao.minute.toString().padLeft(2, '0')}";

  // Dividir os dados em páginas
  for (int i = 0; i < nomes.length; i += maxLinesPerPage) {
    final pageNomes = nomes.sublist(
        i,
        i + maxLinesPerPage > nomes.length
            ? nomes.length
            : i + maxLinesPerPage);
    final pageDatas = datas.sublist(
        i,
        i + maxLinesPerPage > datas.length
            ? datas.length
            : i + maxLinesPerPage);
    final pageValores = valores.sublist(
        i,
        i + maxLinesPerPage > valores.length
            ? valores.length
            : i + maxLinesPerPage);
    final pageEmails = emails.sublist(
        i,
        i + maxLinesPerPage > emails.length
            ? emails.length
            : i + maxLinesPerPage);
    final pageTelefones = telefones.sublist(
        i,
        i + maxLinesPerPage > telefones.length
            ? telefones.length
            : i + maxLinesPerPage);

    // Adicionar conteúdo ao PDF
    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4.landscape, // Define o layout como paisagem
        build: (pw.Context context) {
          return [
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                // Cabeçalho com logotipo e textos
                if (logoBytes != null)
                  pw.Center(
                    child: pw.Container(
                      width: 150,
                      height: 100,
                      child: pw.Image(pw.MemoryImage(logoBytes)),
                    ),
                  ),
                pw.SizedBox(height: 10), // Espaço entre o logotipo e os textos

                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          tituloEsquerda,
                          style: pw.TextStyle(
                              fontSize: 24, fontWeight: pw.FontWeight.bold),
                        ),
                        pw.SizedBox(height: 5),
                      ],
                    ),
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Text(
                          tituloDireita,
                          style: pw.TextStyle(
                              fontSize: 18, fontWeight: pw.FontWeight.bold),
                          textAlign: pw.TextAlign.right,
                        ),
                        pw.SizedBox(height: 5), // Ajuste de espaçamento
                        pw.Text(
                          dataFormatada,
                          style: pw.TextStyle(
                              fontSize: 12, fontStyle: pw.FontStyle.italic),
                          textAlign: pw.TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),

                pw.SizedBox(
                    height:
                        15), // Maior espaço entre os títulos e o texto adicional

                // Texto adicional
                pw.Text(
                  textoAdicional,
                  style: pw.TextStyle(
                      fontSize: 14, fontStyle: pw.FontStyle.italic),
                ),

                pw.SizedBox(
                    height: 20), // Espaço entre o texto adicional e a tabela

                // Tabela
                pw.TableHelper.fromTextArray(
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
                      pageNomes[index],
                      pageDatas[index],
                      pageValores[index],
                      pageEmails[index],
                      pageTelefones[index]
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
          ];
        },
      ),
    );
  }

  // Converter para bytes
  final Uint8List pdfBytes = await pdf.save();

  // Fazer o download do arquivo
  await Printing.sharePdf(
    bytes: pdfBytes,
    filename: 'bordero.pdf',
  );
}
