import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_routes.dart';
import 'customBtn.dart';
import 'guest_widget.dart';

Widget reservationBottomSheet() {
  return SizedBox(
      height: 300,
      child: Column(
        children: [
          guests(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customBtn(
                  buttonName: 'Cancel',
                  onClick: () {
                    Get.back();
                  }),
              customBtn(
                  buttonName: 'Select',
                  onClick: () {
                    Get.toNamed(AppRoutes.reservationDetail);
                  })
            ],
          )
        ],
      ));
}
