import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget/detail_image_position_card.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});
  @override
  Widget build(BuildContext context) {
    const String defaultUrl = "https://wallpaperaccess.com/full/6688225.jpg";
    const String description =
        'Lorem Ipsum, kısaca Lipsum, masaüstü yayıncılık ve basın yayın sektöründe kullanılan taklit yazı bloğu olarak tanımlanır. Lipsum, oluşturulacak şablon ve taslaklarda içerik yerine geçerek yazı bloğunu doldurmak için kullanılır.';
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(10),
            child: AppBar(
              backgroundColor: Colors.black,
              elevation: 2,
            )),
        body: ListView(children: [
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width / 1,
                    height: Get.height / 2.2,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(defaultUrl)),
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _detailCustomTitle(title: 'Gallery'),
                        SizedBox(
                          height: Get.height / 10,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return detailCardImage(defaultUrl);
                              }),
                        ),
                        _detailCustomTitle(title: 'Description'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            description,
                            style: TextStyle(fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              detailImagePositionCard(),
              Positioned(
                right: 10,
                top: 50,
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(Icons.heart_broken)),
              ),
              Positioned(
                left: 10,
                top: 50,
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(Icons.arrow_back)),
              ),
            ],
          ),
        ]));
  }

  Padding _detailCustomTitle({required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }

  Widget detailCardImage(String defaultUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: Get.width / 4.4,
        height: Get.height / 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(defaultUrl))),
      ),
    );
  }
}
