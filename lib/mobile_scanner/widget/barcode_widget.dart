import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:work/controller/barcode_controller/barcode_controller.dart';

Widget barcodeScan(BuildContext context) {
  BarcodeController barcodeController = Get.find();
  return Stack(
    children: [
      SizedBox(
        height: Get.height / 1,
        child: MobileScanner(
          fit: BoxFit.cover,
          controller: MobileScannerController(
            returnImage: true,
          ),
          onDetect: (capture) {
            barcodeController.getBarcode(capture);
            final Uint8List? image = capture.image;
            if (image != null) {
              showDialog(
                context: context,
                builder: (context) => Image(image: MemoryImage(image)),
              );
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.pop(context);
                Get.back();
              });
            }
          },
        ),
      ),
      Center(
          child: Image.asset(
        'assets/images/scan.png',
        fit: BoxFit.cover,
      )),
    ],
  );
}
