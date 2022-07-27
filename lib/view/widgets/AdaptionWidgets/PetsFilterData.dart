import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AdaptionScreen/RequestScreen.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/widgets/CustomContainer.dart';

class PetsFilterData extends StatelessWidget {
  const PetsFilterData({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  final AppCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding:  const EdgeInsets.all(paddingLarge * 2),
      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: paddingLarge * 2,
          mainAxisSpacing: paddingLarge,
          childAspectRatio: 1 / 1.3,
          crossAxisCount: 3),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) =>
          CustomContainer(
            backColor: const Color(0xffEAEAEA),
            dogName: '${cubit.findModelObject!.data[index].name}',
            sharedName: '${cubit.findModelObject!.data[index].user!.firstName}',
            onPressed: ()
            {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => RequestScreen(
                    breedController:cubit.findModelObject!.data[index].breed ,
                    careController:cubit.findModelObject!.data[index].careBehavior ,
                    categoryController: cubit.findModelObject!.data[index].category ,
                    colorController: cubit.findModelObject!.data[index].color ,
                    descriptionController: cubit.findModelObject!.data[index].description ,
                    genderController: cubit.findModelObject!.data[index].color,
                    hairController: cubit.findModelObject!.data[index].hairLength ,
                    houseController: cubit.findModelObject!.data[index].houseTrained,
                    locationController: cubit.findModelObject!.data[index].location ,
                    monthController: cubit.findModelObject!.data[index].month ,
                    nameController: cubit.findModelObject!.data[index].name ,
                    phoneController: cubit.findModelObject!.data[index].phone ,
                    sizeController: cubit.findModelObject!.data[index].size ,
                    yearController: cubit.findModelObject!.data[index].year ,

                  ),
                ),
              );
            },

          ),
    );
  }
}