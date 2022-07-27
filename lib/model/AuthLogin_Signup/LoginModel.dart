class LoginModel {
  String? token;

  LoginModel({this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['accessToken'];
  }

}