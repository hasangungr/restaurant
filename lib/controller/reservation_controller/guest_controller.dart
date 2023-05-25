import 'package:get/get.dart';

class GuestController extends GetxController {
  RxInt guestCount = 1.obs;

  void incrementGuest() {
    guestCount.value = guestCount.value + 1;
  }

  void decrementGuest() {
    if (guestCount.value >= 2) {
      guestCount.value = guestCount.value - 1;
    }
  }
}
