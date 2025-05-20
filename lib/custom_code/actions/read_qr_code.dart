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

import 'package:qr_code_scanner/qr_code_scanner.dart'; // Biblioteca multiplataforma

Future<String> readQrCode(BuildContext context) async {
  try {
    // Navega para a tela de QR Code Scanner
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => QRCodeScannerScreen(),
      ),
    );

    if (result != null && result is String) {
      return result; // Retorna o texto decodificado do QR Code
    } else {
      return 'Nenhum QR Code detectado';
    }
  } catch (e) {
    return 'Erro ao ler QR Code: $e';
  }
}

// Tela de Scanner QR Code
class QRCodeScannerScreen extends StatefulWidget {
  @override
  _QRCodeScannerScreenState createState() => _QRCodeScannerScreenState();
}

class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String? qrCodeResult;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Leia o QR Code')),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                qrCodeResult ?? 'Aponte a câmera para o QR Code',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrCodeResult = scanData.code;
      });
      Navigator.of(context)
          .pop(scanData.code); // Retorna o resultado para o Future
    });
  }
}
