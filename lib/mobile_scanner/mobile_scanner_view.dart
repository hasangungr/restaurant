import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/barcode_controller/barcode_controller.dart';
import 'package:work/mobile_scanner/widget/barcode_widget.dart';

class MobileScannerView extends StatelessWidget {
  const MobileScannerView({super.key});

  @override
  Widget build(BuildContext context) {
    BarcodeController barcodeController = Get.put(BarcodeController());
    return Scaffold(body: barcodeScan(context));
  }
}
