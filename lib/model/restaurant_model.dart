class restaurantModel {
  String? resName;
  String? location;
  String? imageUrl;
  bool? isCheck;

  restaurantModel({this.resName, this.location, this.imageUrl, this.isCheck});

  restaurantModel.fromJson(Map<String, dynamic> json) {
    resName = json['resName'];
    location = json['location'];
    imageUrl = json['imageUrl'];
    isCheck = json['isCheck'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['resName'] = resName;
    data['location'] = location;
    data['imageUrl'] = imageUrl;
    data['isCheck'] = isCheck;
    return data;
  }
}
