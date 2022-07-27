class PetNeedsModel {
   List<PetNeeds> petNeeds=[];
    PetNeedsModel.fromJson(Map<String, dynamic> json) {
      json['/static/homepage/pet-needs'].forEach((element)
      {
        petNeeds.add(PetNeeds.fromJson(element));
      });
  }




}

class PetNeeds{
  String? imageUrl;
  String? title;

  PetNeeds({this.imageUrl, this.title});

  PetNeeds.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    title = json['title'];
  }

}
