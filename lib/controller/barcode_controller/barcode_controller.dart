import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeController extends GetxController {
  var rawValue = 'Barcode Value'.obs;

  void getBarcode(capture) {
    final List<Barcode> barcodes = capture.barcodes;
    for (final barcode in barcodes) {
      rawValue.value = barcode.rawValue!;
    }
  }
}
