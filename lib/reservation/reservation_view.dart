import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/reservation_controller/check_controller.dart';
import 'package:work/controller/reservation_controller/guest_controller.dart';
import 'package:work/reservation/widgets/restaurant_card.dart';
import 'package:work/reservation/widgets/time_widget_two.dart';
import 'widgets/customBtn.dart';
import 'widgets/date_widget.dart';
import 'widgets/reservation_bottom_sheet.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});
  @override
  Widget build(BuildContext context) {
    CheckController checkController = Get.put(CheckController());
    GuestController guestController = Get.put(GuestController());
    return Scaffold(
      body: ListView(
        children: [
          restaurantCard(),
          date(),
          timeWidgetTwo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customBtn(buttonName: 'Cancel'),
              customBtn(
                  buttonName: 'Select',
                  onClick: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25))),
                        context: context,
                        builder: (BuildContext context) =>
                            reservationBottomSheet());
                  }),
            ],
          )
        ],
      ),
    );
  }
}
