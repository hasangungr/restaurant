import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/controller/reservation_controller/check_controller.dart';
import 'package:work/reservation/data/data.dart';

CheckController checkController = Get.find();
Widget restaurantCard() {
  return Container(
      margin: const EdgeInsets.all(20),
      width: Get.width / 1,
      height: Get.height / 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(width: 1, color: Colors.blueGrey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
            child: Text(
              'Restaurant',
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: restaurantInfo.length,
                  itemBuilder: (BuildContext context, int index) {
                    return restaurantImageCard(index);
                  }),
            ),
          ),
        ],
      ));
}

Widget restaurantImageCard(int index) {
  return Obx(() => Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    checkController.selectedIndex.value = index;
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 8.0),
                    width: Get.width / 2.2,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: checkController.selectedIndex.value == index
                                ? 2
                                : 0,
                            color: Colors.green),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage(restaurantInfo[index].imageUrl!)),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Container(
                width: Get.width / 2.2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          restaurantInfo[index].resName ?? '',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        InkWell(onTap: () {}, child: const Icon(Icons.menu))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          checkController.selectedIndex.value == index
              ? Positioned(
                  top: Get.height / 50,
                  right: Get.width / 18,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                    ),
                  ),
                )
              : Container(),
        ],
      ));
}
