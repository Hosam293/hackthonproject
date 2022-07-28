
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
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var cubit = BlocProvider.of<AppCubit>(context);
        return Scaffold(
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
                            padding: EdgeInsets.all(8.0),
                            child: Text(
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
                            image: AssetImage(
                                "assets/icons/Mask Group 1.png"
                            ),
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          CustomFormField(
                            title: 'Name',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            type: TextInputType.text,
                            onTap: () {},
                            titleController: nameController,
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          CustomFormField(
                            title: 'Category',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            type: TextInputType.text,
                            onTap: () {},
                            titleController: categoryController,
                            readonly: true,
                            suffixIcon: DropdownButton<String>(
                              items: <String>['1', '2'].map((String value) {
                                return DropdownMenuItem<String>(
                                  onTap: () {
                                    categoryController.text = value;
                                  },
                                  value: value,
                                  child: Text(value),
                                );

                              }).toList(),
                              icon: const Icon(Icons.arrow_drop_down),
                              elevation: 0,
                              autofocus: false,
                              underline: Container(),




                              onChanged: (_) {},

                            ),
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Row(
                            children:
                            [
                              Expanded(
                                child: CustomFormField(
                                  title: 'Year',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: yearController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: cubit.sendFilterModel!.ages!.map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          yearController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'month',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: monthController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          monthController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
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
                                  title: 'Size',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: sizeController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          sizeController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'Breed',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: breedController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          breedController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
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
                                  title: 'Gender',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: genderController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          genderController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'Breed',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: breedController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          breedController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
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
                                  title: 'Hair Lenght',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: hairController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          hairController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'Care',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: careController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          careController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
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
                                  title: 'House Trained',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: houseController,
                                  readonly: true,
                                  suffixIcon: DropdownButton<String>(
                                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                      return DropdownMenuItem<String>(
                                        onTap: () {
                                          houseController.text = value;
                                        },
                                        value: value,
                                        child: Text(value),
                                      );

                                    }).toList(),
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 0,
                                    autofocus: false,
                                    underline: Container(),




                                    onChanged: (_) {},

                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: paddingLarge,
                              ),
                              Expanded(
                                child: CustomFormField(
                                  title: 'Color',
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  type: TextInputType.text,
                                  onTap: () {},
                                  titleController: colorController,
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
                            title: 'Location',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            type: TextInputType.streetAddress,
                            onTap: () {},
                            titleController: locationController,
                            readonly: true,
                            suffixIcon: DropdownButton<String>(
                              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                return DropdownMenuItem<String>(
                                  onTap: () {
                                    locationController.text = value;
                                  },
                                  value: value,
                                  child: Text(value),
                                );

                              }).toList(),
                              icon: const Icon(Icons.arrow_drop_down),
                              elevation: 0,
                              autofocus: false,
                              underline: Container(),




                              onChanged: (_) {},

                            ),
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          CustomFormField(
                            title: 'Phone Number',
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            type: TextInputType.phone,
                            onTap: () {},
                            titleController: phoneController,
                          ),
                          const SizedBox(
                            height: paddingLarge,
                          ),
                          Container(
                            height: 130,
                            child: CustomFormField(
                              title: 'description',
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              type: TextInputType.text,
                              onTap: () {},
                              titleController: descriptionController,
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