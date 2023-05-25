import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/reservation_controller/check_controller.dart';
import 'package:work/reservation/widgets/restaurant_card.dart';
import '../data/data.dart';

Container timeWidget() {
  CheckController checkController = Get.put(CheckController());
  return Container(
      margin: const EdgeInsets.all(20),
      width: Get.width / 1,
      height: Get.height / 3.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(width: 1, color: Colors.blueGrey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Time',
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: Get.height / 4.6,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8.0,
                    childAspectRatio: 2.1,
                    crossAxisCount: 3),
                itemCount: resTime.length,
                itemBuilder: (BuildContext context, int index) {
                  return timeBox(index);
                }),
          )
        ],
      ));
}

Widget timeBox(int index) {
  return Obx(() => InkWell(
        onTap: () {
          checkController.selectTimeIndex.value = index;
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: BoxDecoration(
              color: checkController.selectTimeIndex.value == index &&
                      resTime[index].isActive == false
                  ? Colors.blueGrey
                  : Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1, color: Colors.blueGrey)),
          margin: const EdgeInsets.all(6.0),
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
      ));
}
