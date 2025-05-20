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

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:http/http.dart' as http;
import 'dart:typed_data';

Future gerarPDF(
  String barCode,
  String ingresso,
  String nomeShow,
  String dataShow,
  String valor,
  String dataCompra,
  String endereco,
  String nomeCliente,
  String logoUrl, // URL da imagem do logo
) async {
  // Baixando a imagem da URL fornecida
  final logoResponse = await http.get(Uri.parse(logoUrl));
  if (logoResponse.statusCode != 200) {
    throw Exception('Falha ao carregar imagem do logo');
  }
  final Uint8List logoBytes = logoResponse.bodyBytes;

  final pdf = pw.Document();

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Stack(
        children: [
          pw.Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: pw.Container(
              padding: pw.EdgeInsets.all(16),
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  // Header com logotipo acima do título do evento
                  pw.Container(
                    width: 80,
                    height: 80,
                    child: pw.Image(
                      pw.MemoryImage(logoBytes), // Usando a imagem baixada
                    ),
                  ),
                  pw.SizedBox(height: 8), // Espaço entre o logo e o título
                  pw.Text(
                    nomeShow,
                    style: pw.TextStyle(
                      fontSize: 28,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColor.fromHex('#333333'),
                    ),
                  ),
                  pw.SizedBox(height: 8),

                  // Linha horizontal para separação
                  pw.Divider(thickness: 1, color: PdfColor.fromHex('#cccccc')),
                  pw.SizedBox(height: 12),

                  // Seção de informações do evento
                  pw.Container(
                    padding: pw.EdgeInsets.all(16),
                    decoration: pw.BoxDecoration(
                      color: PdfColor.fromHex('#f5f5f5'), // Cor de fundo suave
                      borderRadius: pw.BorderRadius.circular(8),
                      border: pw.Border.all(color: PdfColor.fromHex('#dddddd')),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Data e Horário:',
                          style: pw.TextStyle(
                            fontSize: 16,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColor.fromHex('#555555'),
                          ),
                        ),
                        pw.Text(
                          dataShow,
                          style: pw.TextStyle(
                            fontSize: 14,
                            color: PdfColor.fromHex('#555555'),
                          ),
                        ),
                        pw.SizedBox(height: 8),
                        pw.Text(
                          'Local:',
                          style: pw.TextStyle(
                            fontSize: 16,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColor.fromHex('#555555'),
                          ),
                        ),
                        pw.Text(
                          endereco,
                          style: pw.TextStyle(
                            fontSize: 14,
                            color: PdfColor.fromHex('#555555'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 20),

                  // Seção do ingresso
                  pw.Container(
                    width: double.infinity,
                    padding: pw.EdgeInsets.all(16),
                    decoration: pw.BoxDecoration(
                      color: PdfColor.fromHex(
                          '#e0f7fa'), // Cor de fundo do ingresso
                      borderRadius: pw.BorderRadius.circular(8),
                      border: pw.Border.all(color: PdfColor.fromHex('#4dd0e1')),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Ingresso',
                          style: pw.TextStyle(
                            fontSize: 18,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColor.fromHex('#006064'),
                          ),
                        ),
                        pw.SizedBox(height: 8),
                        pw.Text(
                          ingresso,
                          style: pw.TextStyle(
                            fontSize: 16,
                            color: PdfColor.fromHex('#004d40'),
                          ),
                        ),
                        pw.SizedBox(height: 8),
                        pw.Text(
                          'Valor: R\$ $valor',
                          style: pw.TextStyle(
                            fontSize: 16,
                            color: PdfColor.fromHex('#004d40'),
                          ),
                        ),
                        pw.SizedBox(height: 8),
                        pw.Text(
                          'Data da compra: $dataCompra',
                          style: pw.TextStyle(
                            fontSize: 14,
                            color: PdfColor.fromHex('#004d40'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 20),

                  // Seção com informações do participante
                  pw.Container(
                    padding: pw.EdgeInsets.all(16),
                    decoration: pw.BoxDecoration(
                      color: PdfColor.fromHex('#ffe0b2'), // Cor suave
                      borderRadius: pw.BorderRadius.circular(8),
                      border: pw.Border.all(color: PdfColor.fromHex('#ffb74d')),
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          'Nome do Participante',
                          style: pw.TextStyle(
                            fontSize: 16,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColor.fromHex('#e65100'),
                          ),
                        ),
                        pw.Text(
                          nomeCliente,
                          style: pw.TextStyle(
                            fontSize: 14,
                            color: PdfColor.fromHex('#e65100'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.SizedBox(height: 20),

                  // QR Code movido para baixo do container do participante
                  pw.Container(
                    padding: pw.EdgeInsets.all(16),
                    decoration: pw.BoxDecoration(
                      color: PdfColor.fromHex('#e0f2f1'), // Cor suave
                      borderRadius: pw.BorderRadius.circular(8),
                      border: pw.Border.all(color: PdfColor.fromHex('#80cbc4')),
                    ),
                    child: pw.BarcodeWidget(
                      barcode: pw.Barcode.qrCode(),
                      data: barCode,
                      width: 120,
                      height: 120,
                    ),
                  ),
                ],
              ),
            ),
          ),
          pw.Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: pw.Container(
              padding: pw.EdgeInsets.all(16),
              decoration: pw.BoxDecoration(
                color: PdfColor.fromHex('#eeeeee'), // Cor do fundo do rodapé
                borderRadius:
                    pw.BorderRadius.vertical(top: pw.Radius.circular(8)),
                border: pw.Border.all(color: PdfColor.fromHex('#cccccc')),
              ),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Container(
                    width: 50,
                    height: 50,
                    child: pw.Image(
                      pw.MemoryImage(logoBytes), // Usando a imagem baixada
                    ),
                  ),
                  pw.Text(
                    'Comédia Ingressos',
                    style: pw.TextStyle(
                      fontSize: 16,
                      fontWeight: pw.FontWeight.bold,
                      color: PdfColor.fromHex('#333333'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    },
  ));

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
