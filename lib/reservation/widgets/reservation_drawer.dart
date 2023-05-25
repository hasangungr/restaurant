import 'package:flutter/material.dart';
import 'drawer_card.dart';
import 'package:get/get.dart';

Drawer drawer() => Drawer(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 150, 203, 203),
        elevation: 0,
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              const TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: Color.fromARGB(255, 150, 203, 203),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(5))),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      text: 'Rezervasyon',
                    ),
                    Tab(
                      text: 'İptal Edilenler',
                    ),
                    Tab(
                      text: 'Beklemede',
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  Container(
                      child: Column(
                    children: [drawerCard()],
                  )),
                  Container(
                      child: Column(
                    children: [
                      drawerCard(
                          cardColor: const Color.fromARGB(255, 167, 55, 53))
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [drawerCard(cardColor: Colors.amberAccent)],
                  )),
                ]),
              )
            ],
          )),
    ));
