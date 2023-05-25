import 'package:flutter/material.dart';
import 'package:get/get.dart';

Positioned detailImagePositionCard() {
  return Positioned(
    right: 24,
    left: 24,
    top: Get.height / 2.6,
    child: Container(
      height: Get.height / 7,
      decoration: BoxDecoration(
          color: Colors.black54, borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Vacation Hotel ',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_city,
                    color: Colors.white60,
                    size: 28,
                  ),
                  Text(
                    'Antalya / Turkey ',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ]),
      ),
    ),
  );
}
