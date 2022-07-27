class SendFilterModel {
  List<String>? breed;
  List<String>? ages;
  List<String>? size;
  List<String>? goodWith;
  Gender? gender;
  List<String>? colors;
  List<String>? hairLength;
  List<String>? behaviour;



  SendFilterModel.fromJson(Map<String, dynamic> json) {
    breed = json['breed'].cast<String>();
    ages = json['ages'].cast<String>();
    size = json['size'].cast<String>();
    goodWith = json['goodWith'].cast<String>();
    gender =
    json['gender'] != null ? new Gender.fromJson(json['gender']) : null;
    colors = json['colors'].cast<String>();
    hairLength = json['hairLength'].cast<String>();
    behaviour = json['behaviour'].cast<String>();
  }

}

class Gender {
  int? male;
  int? female;

  Gender({this.male, this.female});

  Gender.fromJson(Map<String, dynamic> json) {
    male = json['male'];
    female = json['female'];
  }

}