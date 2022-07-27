import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';
import 'package:petology/view/widgets/CustomButton.dart';
import 'package:petology/view/widgets/CustomFormField/CustomTextFormField.dart';
import 'package:petology/view/widgets/Footer.dart';
import 'package:petology/view/widgets/Header.dart';

class HelpScreen extends StatelessWidget {
  var categoryController = TextEditingController();
  var locationController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      { var cubit = BlocProvider.of<AppCubit>(context);
      var helpImage = BlocProvider.of<AppCubit>(context).helpImage;
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  const SizedBox(
                    height: paddingLarge * 2,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 700,

                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(paddingLarge / 2),
                            border: Border.all(color: black, width: 2),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(paddingLarge ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Help Your Friend',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(color: black),
                              ),
                              const SizedBox(
                                height: paddingLarge * 2,
                              ),
                              GestureDetector(
                                onTap: ()
                                {
                                  cubit.getHelpImage();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  constraints:
                                  const BoxConstraints(
                                      maxHeight: 150, maxWidth: 150),
                                  decoration:  BoxDecoration(
                                      image: DecorationImage(
                                          image: helpImage == null
                                              ? AssetImage(
                                            'assets/icons/camera.png',
                                          )
                                              : FileImage(
                                              helpImage) as ImageProvider,
                                          fit: BoxFit.cover
                                      )),
                                ),
                              ),
                              const SizedBox(
                                height: paddingLarge ,
                              ),
                              CustomFormField(
                                title: 'Category',
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter category';
                                  }
                                  return null;
                                },
                                type: TextInputType.text,
                                onTap: () {},
                                titleController: categoryController,
                              ),
                              SizedBox(
                                height: paddingLarge ,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: paddingLarge/2),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Detect your current location',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(color: black),
                                ),
                              ),

                              CustomFormField(
                                title: 'Location',
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter location';
                                  }
                                  return null;
                                },
                                type: TextInputType.streetAddress,
                                onTap: () {},
                                titleController: locationController,
                                suffixIcon: Icon(
                                  Icons.location_on,
                                  color: hPrimary,
                                ),
                              ),
                              const SizedBox(
                                height: paddingLarge ,
                              ),
                              CustomFormField(
                                title: 'Phone Number',
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter number';
                                  }
                                  return null;
                                },
                                type: TextInputType.text,
                                onTap: () {},
                                titleController: phoneController,
                              ),
                              const SizedBox(
                                height: paddingLarge ,
                              ),
                              Container(
                                width: double.infinity,
                                child: CustomButton(
                                  text: 'Send',
                                  backColor: hPrimary,
                                  textColor: white,
                                  height: 25,
                                  width: 40,
                                  fontSize: 18,
                                  onPressed: () {},
                                  borderColor: white,
                                ),
                              ),
                              const SizedBox(
                                height: paddingLarge/2,
                              ),
                              Container(
                                width: double.infinity,
                                child: CustomButton(
                                  text: 'call',
                                  backColor: Color(0xffFFE3C5),
                                  textColor: black,
                                  height: 25,
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
                      // Positioned(
                      //   top: -12,
                      //   left: 0,
                      //   child: Container(
                      //     constraints:
                      //         const BoxConstraints(maxHeight: 70, maxWidth: 70),
                      //     decoration: const BoxDecoration(
                      //         image: DecorationImage(
                      //       image: AssetImage(
                      //         'assets/images/Icon material-pets.png',
                      //       ),
                      //     )),
                      //   ),
                      // ),
                      // Positioned(
                      //   bottom: -20,
                      //   right: 0,
                      //   child: Container(
                      //     constraints:
                      //         const BoxConstraints(maxHeight: 100, maxWidth: 100),
                      //     decoration: const BoxDecoration(
                      //         image: DecorationImage(
                      //       image: AssetImage(
                      //         'assets/images/Icon material-pets.png',
                      //       ),
                      //     )),
                      //   ),
                      // ),
                      // Positioned(
                      //   top: 50,
                      //   left: 500,
                      //   child: Container(
                      //     constraints:
                      //         const BoxConstraints(maxHeight: 500, maxWidth: 500),
                      //     decoration: const BoxDecoration(
                      //         image: DecorationImage(
                      //       image: AssetImage(
                      //         'assets/images/Icon material-pets.png',
                      //       ),
                      //     )),
                      //   ),
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: paddingLarge,
                  ),
                  Footer(),
                ],
              ),
            ),
          ),
      );
      }
    );
  }
}
