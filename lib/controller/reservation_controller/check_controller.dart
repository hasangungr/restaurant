import 'package:get/get.dart';

class CheckController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt selectTimeIndex = 0.obs;

  void checkIndex(int value) {
    selectedIndex.value = value;
    selectTimeIndex.value = value;
  }
}
