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
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'dart:typed_data';

Future<void> gerarPDFVenda(
  String barCode,
  String nomeShow,
  String dataShow,
  String dataCompra,
  String endereco,
  String nomeCliente,
  String logoUrl,
  List<DocumentReference> ingressosRef,
  DocumentReference vendaRef,
  String nomeArquivo,
) async {
  try {
    print("Iniciando a geração do PDF...");

    // Baixando a imagem do logo
    final logoResponse = await http.get(Uri.parse(logoUrl));
    if (logoResponse.statusCode != 200) {
      throw Exception('Falha ao carregar imagem do logo');
    }
    final Uint8List logoBytes = logoResponse.bodyBytes;
    print("Logo carregado com sucesso!");

    // Obtendo os ingressos a partir das referências
    double valorTotal = 0.0;
    final List<Map<String, dynamic>> ingressosDetalhes = [];
    for (final ingressoRef in ingressosRef) {
      final ingressoSnapshot = await ingressoRef.get();
      if (ingressoSnapshot.exists) {
        final ingressoData = ingressoSnapshot.data() as Map<String, dynamic>;

        // Obter a referência do ingresso para buscar o nome na tabela
        final nomeIngressoRef =
            ingressoData['ingresso']; // A referência do ingresso
        final nomeIngressoSnapshot = await nomeIngressoRef.get();

        String nomeIngresso =
            'Desconhecido'; // Valor padrão caso não exista o nome
        if (nomeIngressoSnapshot.exists) {
          final nomeIngressoData =
              nomeIngressoSnapshot.data() as Map<String, dynamic>;
          nomeIngresso = nomeIngressoData['nome'] ??
              'Desconhecido'; // Acessando o campo nome do ingresso
        }

        final quantidade = ingressoData['quantdd'] ?? 0;
        final subTotal = (ingressoData['subTotal'] ?? 0).toDouble();
        valorTotal += subTotal;

        ingressosDetalhes.add({
          'nome': nomeIngresso,
          'quantidade': quantidade,
          'subTotal': subTotal,
        });
      } else {
        print("Ingresso não encontrado na referência: ${ingressoRef.id}");
      }
    }

    if (ingressosDetalhes.isEmpty) {
      throw Exception('Nenhum ingresso encontrado na referência fornecida.');
    }

    // Criação do PDF
    final pdf = pw.Document();
    final fontRegular = pw.Font.times(); // Fonte Times padrão
    final fontBold = pw.Font.timesBold(); // Fonte Times em negrito

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
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.Container(
                      width: 80,
                      height: 80,
                      child: pw.Image(pw.MemoryImage(logoBytes)),
                    ),
                    pw.SizedBox(height: 8),
                    pw.Text(
                      nomeShow,
                      style: pw.TextStyle(
                        font: fontBold,
                        fontSize: 28,
                        color: PdfColor.fromHex('#333333'),
                      ),
                    ),
                    pw.SizedBox(height: 8),
                    pw.Divider(
                        thickness: 1, color: PdfColor.fromHex('#cccccc')),
                    pw.SizedBox(height: 12),
                    pw.Container(
                      padding: pw.EdgeInsets.all(16),
                      decoration: pw.BoxDecoration(
                        color: PdfColor.fromHex('#f5f5f5'),
                        borderRadius: pw.BorderRadius.circular(8),
                        border:
                            pw.Border.all(color: PdfColor.fromHex('#dddddd')),
                      ),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            'Data e Horário:',
                            style: pw.TextStyle(
                              font: fontBold,
                              fontSize: 16,
                              color: PdfColor.fromHex('#555555'),
                            ),
                          ),
                          pw.Text(
                            dataShow,
                            style: pw.TextStyle(
                              font: fontRegular,
                              fontSize: 14,
                              color: PdfColor.fromHex('#555555'),
                            ),
                          ),
                          pw.SizedBox(height: 8),
                          pw.Text(
                            'Local:',
                            style: pw.TextStyle(
                              font: fontBold,
                              fontSize: 16,
                              color: PdfColor.fromHex('#555555'),
                            ),
                          ),
                          pw.Text(
                            endereco,
                            style: pw.TextStyle(
                              font: fontRegular,
                              fontSize: 14,
                              color: PdfColor.fromHex('#555555'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Container(
                      width: double.infinity,
                      padding: pw.EdgeInsets.all(16),
                      decoration: pw.BoxDecoration(
                        color: PdfColor.fromHex('#e0f7fa'),
                        borderRadius: pw.BorderRadius.circular(8),
                        border:
                            pw.Border.all(color: PdfColor.fromHex('#4dd0e1')),
                      ),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            'Ingressos',
                            style: pw.TextStyle(
                              font: fontBold,
                              fontSize: 18,
                              color: PdfColor.fromHex('#006064'),
                            ),
                          ),
                          pw.SizedBox(height: 8),
                          // Exibição dos ingressos com nova página se necessário
                          ...ingressosDetalhes.map((ingresso) {
                            return pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  '${ingresso['nome']} (x${ingresso['quantidade']})',
                                  style: pw.TextStyle(
                                    font: fontRegular,
                                    fontSize: 16,
                                    color: PdfColor.fromHex('#004d40'),
                                  ),
                                ),
                                pw.Text(
                                  'Subtotal: R\$ ${ingresso['subTotal'].toStringAsFixed(2)}',
                                  style: pw.TextStyle(
                                    font: fontRegular,
                                    fontSize: 16,
                                    color: PdfColor.fromHex('#004d40'),
                                  ),
                                ),
                                pw.SizedBox(height: 8),
                              ],
                            );
                          }).toList(),
                          pw.SizedBox(height: 16),
                          pw.Divider(),
                          pw.Text(
                            'Total: R\$ ${valorTotal.toStringAsFixed(2)}',
                            style: pw.TextStyle(
                              font: fontBold,
                              fontSize: 18,
                              color: PdfColor.fromHex('#004d40'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Row(
                      children: [
                        pw.Expanded(
                          child: pw.Container(
                            padding: pw.EdgeInsets.all(16),
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromHex('#ffe0b2'),
                              borderRadius: pw.BorderRadius.circular(8),
                              border: pw.Border.all(
                                  color: PdfColor.fromHex('#ffb74d')),
                            ),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  'Nome do Participante',
                                  style: pw.TextStyle(
                                    font: fontBold,
                                    fontSize: 16,
                                    color: PdfColor.fromHex('#e65100'),
                                  ),
                                ),
                                pw.Text(
                                  nomeCliente,
                                  style: pw.TextStyle(
                                    font: fontRegular,
                                    fontSize: 14,
                                    color: PdfColor.fromHex('#e65100'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 16),
                        pw.Container(
                          padding: pw.EdgeInsets.all(16),
                          decoration: pw.BoxDecoration(
                            color: PdfColor.fromHex('#e0f2f1'),
                            borderRadius: pw.BorderRadius.circular(8),
                            border: pw.Border.all(
                                color: PdfColor.fromHex('#80cbc4')),
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
                  ],
                ),
              ),
            ),
            pw.Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: pw.Container(
                padding: pw.EdgeInsets.all(16),
                color: PdfColor.fromHex('#f1f1f1'),
                child: pw.Text(
                  'Agradecemos pela compra!',
                  style: pw.TextStyle(
                    font: fontRegular,
                    fontSize: 12,
                    color: PdfColor.fromHex('#808080'),
                  ),
                  textAlign: pw.TextAlign.center,
                ),
              ),
            ),
          ],
        );
      },
    ));

    // Salvar o PDF no Firebase Storage
    final pdfBytes = await pdf.save();
    final storageRef =
        FirebaseStorage.instance.ref().child('vendas/$nomeArquivo');
    final uploadTask = await storageRef.putData(
        pdfBytes, SettableMetadata(contentType: 'application/pdf'));
    final pdfUrl = await uploadTask.ref.getDownloadURL();
    print("PDF salvo no Firebase Storage com sucesso!");

    // Atualizando o campo pdfUrl na tabela 'venda' com o URL do PDF
    await vendaRef.update({
      'pdfUrl': pdfUrl,
    });
    print("Campo pdfUrl na venda atualizado com sucesso!");
  } catch (e) {
    print("Erro ao gerar o PDF: $e");
    throw Exception('Erro ao gerar o PDF: $e');
  }
}
