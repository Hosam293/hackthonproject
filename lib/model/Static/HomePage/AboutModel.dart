class AboutModel {
  String? title;
  String? body;

  AboutModel({this.title, this.body});

  AboutModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }

}