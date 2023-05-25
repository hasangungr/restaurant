import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work/detail/detail.dart';
import 'package:work/reservation/reservation_view.dart';
import 'package:work/routes/routes.dart';
import 'package:work/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Work',
      initialRoute: AppRoutes.reservation,
      getPages: routes(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
