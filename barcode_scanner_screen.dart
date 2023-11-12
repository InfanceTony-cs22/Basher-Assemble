import 'package:flutter/material.dart';
import 'student.dart';

class BarcodeScannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO: Implement barcode scanning logic
          },
          child: Text('Scan Barcode'),
        ),
      ),
    );
  }
}
