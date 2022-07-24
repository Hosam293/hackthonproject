class FirstSectionModel {
  String? title;
  String? body;

  FirstSectionModel({this.title, this.body});

  FirstSectionModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }

}