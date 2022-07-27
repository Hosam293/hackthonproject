import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';
import 'package:petology/view/widgets/CustomButton.dart';
import 'package:petology/view/widgets/CustomFormField/CustomTextFormField.dart';
import 'package:petology/view/widgets/Footer.dart';
import 'package:petology/view/widgets/Header.dart';

class RequestScreen extends StatelessWidget {

String? nameController;
String? firstNameController;
String? lastNameController;
String? categoryController;
int? monthController ;
int? yearController ;
String? sizeController ;
String? breedController ;
String? genderController ;
String? hairController ;
String? careController ;
bool? houseController ;
String? colorController ;
String? locationController;
String? phoneController ;
String? descriptionController;

RequestScreen(
      {this.nameController,
      this.categoryController,
      this.monthController,
      this.yearController,
      this.sizeController,
      this.breedController,
      this.genderController,
      this.hairController,
      this.careController,
      this.houseController,
      this.colorController,
      this.locationController,
      this.phoneController,
      this.descriptionController});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        return Scaffold(
          backgroundColor: white,
          body:SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),

                  const SizedBox(
                    height: paddingLarge,
                  ),
                  Container(
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color:white,
                        border: Border.all(color: black,width: 1)
                    ),
                    constraints: const BoxConstraints(
                      maxWidth: 700,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:   Text(
                              "Request",
                              style:
                              TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          const SizedBox(
                            height:paddingLarge,
                          ),
                          const Image(
                            image: const AssetImage(
                                "assets/icons/Mask Group 1.png"
                            ),
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          CustomFormField(
                            title: 'name $nameController',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            type: TextInputType.text,
                            onTap: () {},
                            readonly: true,
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          CustomFormField(
                            title: 'category $categoryController',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            type: TextInputType.text,
                            onTap: () {},
                            readonly: true,
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Row(
                            children:
                            [
                              Expanded(
                                child: CustomFormField(
                                  title: 'year $yearController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'month $monthController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Row(
                            children:
                            [
                              Expanded(
                                child: CustomFormField(
                                  title: 'breed $breedController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'size $sizeController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Row(
                            children:
                            [
                              Expanded(
                                child: CustomFormField(
                                  title: 'Color $colorController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'Breed $breedController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Row(
                            children:
                            [
                              Expanded(
                                child: CustomFormField(
                                  title: 'Hair $hairController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'Care $careController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Row(
                            children:
                            [
                              Expanded(
                                child: CustomFormField(
                                  title: 'Housed $houseController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'Color $colorController',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  readonly: true,

                                ),
                              ),

                            ],
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: paddingLarge,vertical: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Detect your current location',
                              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          CustomFormField(
                            title: 'Location $locationController',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            type: TextInputType.streetAddress,
                            onTap: () {},
                            readonly: true,
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          CustomFormField(
                            title: 'Phone $phoneController',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            type: TextInputType.phone,
                            onTap: () {},
                            readonly: true,
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Container(
                            height: 130,
                            child: CustomFormField(
                              title: '$descriptionController',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              readonly: true,
                            ),
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: paddingLarge,vertical: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Vaccinated (up to date )',
                              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: CustomButton(
                              text: 'Send',
                              backColor: hPrimary,
                              textColor: white,
                              height: 30,
                              width: 40,
                              fontSize: 18,
                              onPressed: () {},
                              borderColor: white,
                            ),
                          ),




                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height:40 ,
                  ),
                  const Footer(),
                ],

              ),
            ),
          ),
        );
      },
    );
  }
}
