class ReigisterModel {
  String? token;

  ReigisterModel({this.token});

  ReigisterModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

}