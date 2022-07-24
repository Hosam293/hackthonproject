class RequestHelpModel {
  double? categoryId;
  String? imageBase64;
  String? location;
  String? phoneNumber;

  RequestHelpModel(
      {this.categoryId, this.imageBase64, this.location, this.phoneNumber});

  RequestHelpModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    imageBase64 = json['imageBase64'];
    location = json['location'];
    phoneNumber = json['phoneNumber'];
  }

}