import 'package:flutter/material.dart';

import 'widgets/reservation_drawer.dart';

class ReservationDetailView extends StatelessWidget {
  const ReservationDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 150, 203, 203),
          elevation: 0,
        ),
        drawer: drawer(),
        body: GridView.builder(
            itemCount: 12,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return customTable();
            }));
  }

  Container customTable() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/tables/resTable.png'))),
    );
  }
}
