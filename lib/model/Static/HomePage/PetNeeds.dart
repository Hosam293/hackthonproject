class PetNeedsModel {
  String? image;

  PetNeedsModel({this.image, this.title});

  String? title;

}
List<PetNeedsModel>petNeeds=
[
  PetNeedsModel(
    image:'assets/icons/bowl.png',
    title: 'Bowls and Cups'
  ),
  PetNeedsModel(
    image:'assets/icons/Group 75.png',
    title: 'Pet Food'
  ),
  PetNeedsModel(
    image:'assets/icons/Inoculation.png',
    title: 'Inoculation'
  ),
  PetNeedsModel(
    image:'assets/icons/bed.png',
    title: 'Sleeping Areas'
  ),
  PetNeedsModel(
    image:'assets/icons/toys.png',
    title: 'Toys'
  ),
  PetNeedsModel(
    image:'assets/icons/transportation.png',
    title: 'Transportation'
  ),
  PetNeedsModel(
    image:'assets/icons/vitamins.png',
    title: 'Vitamins'
  ),

];

