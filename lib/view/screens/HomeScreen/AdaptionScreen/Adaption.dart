import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AdaptionScreen/RequestScreen.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';
import 'package:petology/view/widgets/AdaptionWidgets/PetsFilter.dart';
import 'package:petology/view/widgets/AdaptionWidgets/PetsFilterData.dart';
import 'package:petology/view/widgets/CustomContainer.dart';
import 'package:petology/view/widgets/CustomFormField/CustomTextFormField.dart';
import 'package:petology/view/widgets/Footer.dart';
import 'package:petology/view/widgets/Header.dart';

class Adaption extends StatelessWidget {
  var titleController = TextEditingController();
  var nameController = TextEditingController();
  var categoryController = TextEditingController();
  var monthController = TextEditingController();
  var yearController = TextEditingController();
  var sizeController = TextEditingController();
  var breedController = TextEditingController();
  var genderController = TextEditingController();
  var hairController = TextEditingController();
  var careController = TextEditingController();
  var houseController = TextEditingController();
  var colorController = TextEditingController();
  var locationController = TextEditingController();
  var phoneController = TextEditingController();
  var descriptionController = TextEditingController();
  List<String> names = [
    'breed',
    'ages',
    'size',
    'goodWith',
    'gender',
    'colors',
    'hairLength',
    'behaviour',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<AppCubit>(context);
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  const SizedBox(height: paddingLarge / 2),
                  ConditionalBuilder(
                    condition: cubit.sendFilterModel != null,
                    builder: (context)=>Container(
                      width: double.infinity,
                      child: PetsFilter(titleController: titleController, cubit: cubit),
                    ),
                    fallback: (context)=> const LinearProgressIndicator(),
                  ),
                  ConditionalBuilder(
                    condition: cubit.findModelObject != null,
                    builder: (context)=>PetsFilterData(cubit: cubit),
                    fallback: (context)=> const LinearProgressIndicator(),
                  ),
                  Text(
                    'Show more',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: black),
                  ),
                  const SizedBox(
                    height: paddingLarge,
                  ),
                  const Footer()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}



