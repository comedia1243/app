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
import 'package:cloud_firestore/cloud_firestore.dart';

// Função para gerar o PDF com as vendas do show
Future<void> gerarPDFShow(
  DocumentReference showRef, // Referência ao show (campo `show` nas vendas)
  String nomeShow, // Nome do show
  String dataShow, // Data do show
  String logoUrl, // URL do logo do app
) async {
  // Baixando a imagem do logo
  final logoResponse = await http.get(Uri.parse(logoUrl));
  if (logoResponse.statusCode != 200) {
    throw Exception('Falha ao carregar imagem do logo');
  }
  final Uint8List logoBytes = logoResponse.bodyBytes;

  // Criando o documento PDF
  final pdf = pw.Document();

  // Carregando a fonte padrão do pacote PDF (suporta Unicode)
  final font = await PdfGoogleFonts.nunitoRegular();

  // Listando as vendas
  List<VendaRecord> vendas = await listarVendasPorShow(showRef);

  // Adicionando a página do show e a lista de vendas ao PDF
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          // Logotipo e título
          pw.Center(
            child: pw.Column(
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
                    fontSize: 28,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColor.fromHex('#333333'),
                    font: font, // Aplicando a fonte embutida
                  ),
                ),
                pw.SizedBox(height: 8),
                pw.Text(
                  'Data: $dataShow',
                  style: pw.TextStyle(
                    fontSize: 16,
                    color: PdfColor.fromHex('#555555'),
                    font: font, // Aplicando a fonte embutida
                  ),
                ),
              ],
            ),
          ),
          pw.SizedBox(height: 16),
          pw.Divider(thickness: 1, color: PdfColor.fromHex('#cccccc')),
          pw.SizedBox(height: 16),

          // Cabeçalho da lista de vendas
          pw.Text(
            'Lista de Vendas:',
            style: pw.TextStyle(
              fontSize: 20,
              fontWeight: pw.FontWeight.bold,
              color: PdfColor.fromHex('#333333'),
              font: font, // Aplicando a fonte embutida
            ),
          ),
          pw.SizedBox(height: 8),

          // Cabeçalho das colunas
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text(
                'Cliente Nome',
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                  font: font,
                ),
              ),
              pw.Text(
                'Cliente Celular',
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                  font: font,
                ),
              ),
              pw.Text(
                'Valor Receber',
                style: pw.TextStyle(
                  fontSize: 16,
                  fontWeight: pw.FontWeight.bold,
                  font: font,
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 8),

          // Verificando se há vendas
          if (vendas.isEmpty)
            pw.Text(
              'Nenhuma venda encontrada.',
              style: pw.TextStyle(
                fontSize: 14,
                color: PdfColor.fromHex('#555555'),
                font: font, // Aplicando a fonte embutida
              ),
            )
          else
            // Adicionando as vendas na lista
            pw.ListView.builder(
              itemCount: vendas.length,
              itemBuilder: (context, index) {
                final venda = vendas[index];
                return pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      venda.clienteNome,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: font,
                      ),
                    ),
                    pw.Text(
                      venda.clienteCelular,
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: font,
                      ),
                    ),
                    pw.Text(
                      'R\$ ${venda.valorReceber.toStringAsFixed(2)}',
                      style: pw.TextStyle(
                        fontSize: 14,
                        font: font,
                      ),
                    ),
                  ],
                );
              },
            ),
        ],
      );
    },
  ));

  // Gerando o PDF
  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}

// Função para buscar as vendas do show (usando o campo show como referência)
Future<List<VendaRecord>> listarVendasPorShow(DocumentReference showRef) async {
  final querySnapshot = await FirebaseFirestore.instance
      .collection('venda') // Mudado para a coleção "venda"
      .where('show', isEqualTo: showRef)
      .get();

  return querySnapshot.docs
      .map((doc) => VendaRecord.fromDocument(doc))
      .toList();
}

// Classe para representar um registro de venda
class VendaRecord {
  final String clienteNome;
  final String clienteCelular;
  final double valorReceber;

  VendaRecord({
    required this.clienteNome,
    required this.clienteCelular,
    required this.valorReceber,
  });

  // Função para criar uma instância de VendaRecord a partir de um documento Firestore
  factory VendaRecord.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return VendaRecord(
      clienteNome: data['cliente_nome'] ?? 'Sem Nome',
      clienteCelular: data['cliente_celular'] ?? 'Sem Celular',
      valorReceber: data['ValorReceber']?.toDouble() ?? 0.0,
    );
  }
}
