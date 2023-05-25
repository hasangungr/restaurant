class timeModel {
  String? time;
  bool? isActive;

  timeModel({this.time, this.isActive});

  timeModel.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    data['isActive'] = isActive;
    return data;
  }
}
