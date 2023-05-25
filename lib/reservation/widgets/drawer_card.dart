import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget drawerCard({Color? cardColor}) {
  return Container(
    decoration: BoxDecoration(
        color: cardColor ?? const Color.fromARGB(255, 190, 155, 196),
        borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(6.0),
    padding: const EdgeInsets.all(4.0),
    child: ListTile(
      leading: Container(
        width: Get.width / 6,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: const Center(
            child: Text(
          '101',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        )),
      ),
      title: const Text(
        'Guest Name',
        style: TextStyle(color: Colors.white),
      ),
      subtitle: const Text(
        'Guest Info | Guset Info | Guest Info  Guset Info',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _guestsInfoIcon(),
          _guestsInfoIcon(),
        ],
      ),
    ),
  );
}

Widget _guestsInfoIcon() {
  return Expanded(
    child: SizedBox(
      width: Get.width / 12,
      child: Row(
        children: const [
          Icon(
            CupertinoIcons.person,
            size: 20,
            color: Colors.white,
          ),
          Text('0'),
        ],
      ),
    ),
  );
}
