import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container customBtn({Function? onClick, String? buttonName}) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 1, color: Colors.blueGrey)),
      width: Get.width / 2.4,
      child: TextButton(
          onPressed: () => onClick!(),
          child: Text(
            buttonName ?? ' ',
            style: const TextStyle(color: Colors.black),
          )));
}
