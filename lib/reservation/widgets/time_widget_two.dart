import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/reservation_controller/check_controller.dart';
import 'package:work/reservation/widgets/restaurant_card.dart';
import '../data/data.dart';

Container timeWidgetTwo() {
  CheckController checkController = Get.put(CheckController());
  return Container(
      margin: const EdgeInsets.all(20),
      width: Get.width / 1,
      height: Get.height / 6.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(width: 1, color: Colors.blueGrey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Time',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_outlined)),
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              height: Get.height / 16,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: resTime.length,
                  itemBuilder: (BuildContext context, int index) {
                    return timeBox(index);
                  }))
        ],
      ));
}

Widget timeBox(int index) {
  return Obx(() => InkWell(
        onTap: () {
          checkController.selectTimeIndex.value = index;
        },
        child: Container(
          width: Get.width / 4,
          decoration: BoxDecoration(
              color: checkController.selectTimeIndex.value == index &&
                      resTime[index].isActive == false
                  ? Colors.blueGrey
                  : Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.blueGrey)),
          margin: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              resTime[index].time ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: resTime[index].isActive == true
                      ? TextDecoration.lineThrough
                      : null,
                  fontSize: 18,
                  color: checkController.selectTimeIndex.value == index &&
                          resTime[index].isActive == false
                      ? Colors.white
                      : const Color.fromARGB(255, 45, 70, 82)),
            ),
          ),
        ),
      ));
}
