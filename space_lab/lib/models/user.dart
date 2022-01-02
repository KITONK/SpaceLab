class User {
  String ? name;
  String ? phoneNumber;
  String ? photo;
  // подписка ???

  User({this.name, this.phoneNumber, this.photo});

  User.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    phoneNumber = json['PhoneNumber'];
    photo = json['Photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['PhoneNumber'] = phoneNumber;
    data['Photo'] = photo;
    return data;
  }
}