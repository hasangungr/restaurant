import 'package:work/model/restaurant_model.dart';
import 'package:work/model/time_model.dart';

List<timeModel> resTime = [
  timeModel(isActive: false, time: "13:30"),
  timeModel(isActive: true, time: "14:30"),
  timeModel(isActive: false, time: "15:30"),
  timeModel(isActive: false, time: "16:30"),
  timeModel(isActive: false, time: "17:30"),
  timeModel(isActive: false, time: "18:30"),
  timeModel(isActive: true, time: "19:30")
];

List<restaurantModel> restaurantInfo = [
  restaurantModel(
      resName: "Alacarte",
      isCheck: true,
      location: "Antalya / Turkey",
      imageUrl:
          "https://a.cdn-hotels.com/gdcs/production148/d1790/b1f8c60e-14c9-4549-a565-055e971ec8da.jpg"),
  restaurantModel(
      resName: "Alacarte Bursa",
      isCheck: false,
      location: "Bursa / Turkey",
      imageUrl:
          "https://a.cdn-hotels.com/gdcs/production148/d1790/b1f8c60e-14c9-4549-a565-055e971ec8da.jpg"),
  restaurantModel(
      resName: "Alacarte İstanbl",
      isCheck: false,
      location: "İstanbul / Turkey",
      imageUrl:
          "https://a.cdn-hotels.com/gdcs/production148/d1790/b1f8c60e-14c9-4549-a565-055e971ec8da.jpg"),
  restaurantModel(
      resName: "Alacarte",
      isCheck: false,
      location: "Antalya / Turkey",
      imageUrl:
          "https://a.cdn-hotels.com/gdcs/production148/d1790/b1f8c60e-14c9-4549-a565-055e971ec8da.jpg")
];
