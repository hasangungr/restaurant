import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/reservation_controller/guest_controller.dart';

Widget guests() {
  GuestController guestController = Get.find();
  return Container(
    margin: const EdgeInsets.all(20),
    width: Get.width / 1,
    height: Get.height / 10,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(width: 1, color: Colors.blueGrey)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Guests',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 26,
                fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.blueGrey)),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    guestController.decrementGuest();
                  },
                  icon: const Icon(
                    CupertinoIcons.minus,
                    size: 18,
                  )),
              Obx(() => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(guestController.guestCount.value.toString()),
                  )),
              IconButton(
                  onPressed: () {
                    guestController.incrementGuest();
                  },
                  icon: const Icon(
                    CupertinoIcons.plus,
                    size: 18,
                  ))
            ],
          ),
        )
      ],
    ),
  );
}
