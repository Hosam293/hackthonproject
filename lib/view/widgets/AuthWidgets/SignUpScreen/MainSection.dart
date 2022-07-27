import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/Cubit/AuthCubit.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/Cubit/AuthStates.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/LoginScreen.dart';
import 'package:petology/view/widgets/CustomButton.dart';
import 'package:petology/view/widgets/CustomFormField/CustomTextFormField.dart';

class MainSectionSignUp extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var countryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthStates>(
      listener: (context,state)
      {
        if (state is RegisterSuccessState) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen(),
              ));
        }
      },
      builder: (context,state)
      {
        var cubit = BlocProvider.of<AuthCubit>(context);

        return  Form(
          key: formKey,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 700,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(paddingLarge/2),
                    border: Border.all(color: black, width: 2),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(paddingLarge/2),
                  child: Column(
                    children: [
                      Text(
                        'Sign Up',
                        style: Theme
                            .of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: hPrimary),
                      ),
                      const SizedBox(
                        height: paddingLarge/3,
                      ),
                      Row(
                        children:
                        [
                          Expanded(
                            child: CustomButton(
                              text: 'Facebook',
                              textColor: white,
                              backColor: Color(0xff2F4582),
                              width: 15,
                              height: 25,
                              onPressed: (){},
                              borderColor: white,
                              fontSize: 20,
                              image: 'assets/images/Icon ionic-logo-facebook.png',

                            ),
                          ),
                          const SizedBox(
                            width: paddingLarge/4,
                          ),
                          Expanded(
                            child: CustomButton(
                              text: 'Google',
                              textColor: black,
                              backColor: white,
                              width: 15,
                              height: 25,
                              onPressed: (){},
                              borderColor: hPrimary,
                              fontSize: 20,
                              image: 'assets/images/Ellipse 2.png',

                            ),
                          ),


                        ],

                      ),
                      const SizedBox(
                        height: paddingLarge/4,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              height: 2,
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                          Container(
                              alignment: Alignment.topCenter,
                              padding: const EdgeInsets.only(
                                  right: 10, left: 10, bottom: 10),
                              child: Text(
                                'or',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                  color: Colors.black,
                                ),

                              )),
                          const Expanded(
                            child: Divider(
                              height: 2,
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: paddingLarge,
                      ),
                      CustomFormField(
                        title: 'First Name',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter First name';
                          }
                          return null;
                        },
                        type: TextInputType.text,
                        onTap: () {},
                        titleController: firstNameController,
                      ),
                      const SizedBox(
                        height: paddingLarge/2,
                      ),
                      CustomFormField(
                        title: 'Last Name',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Last Name';
                          }
                          return null;
                        },
                        type: TextInputType.text,
                        onTap: () {},
                        titleController: lastNameController,
                      ),
                      const SizedBox(
                        height: paddingLarge/2,
                      ),
                      CustomFormField(
                        title: 'Email',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter emailAddress';
                          }
                          return null;
                        },
                        type: TextInputType.emailAddress,
                        onTap: () {},
                        titleController: emailController,
                      ),
                      const SizedBox(
                        height: paddingLarge/2,
                      ),
                      CustomFormField(
                        title: 'password',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        type: TextInputType.visiblePassword,
                        onTap: () {},
                        titleController: passwordController,
                      ),
                      const SizedBox(
                        height: paddingLarge/2,
                      ),
                      CustomFormField(
                        title: 'Re-password',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        type: TextInputType.visiblePassword,
                        onTap: () {},
                        titleController: rePasswordController,
                      ),
                      const SizedBox(
                        height: paddingLarge/2,
                      ),
                      CustomFormField(
                        readonly: true,
                        title: 'Country',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter country';
                          }
                          return null;
                        },
                        type: TextInputType.text,
                        onTap: () {},
                        titleController: countryController,
                        suffixIcon: DropdownButton<String>(
                          items: <String>['A', 'B', 'C', 'D'].map((String value) {
                            countryController.text = value;
                            return DropdownMenuItem<String>(
                              onTap: () {
                                countryController.text = value;
                              },
                              value: value,
                              child: Text(value),
                            );

                          }).toList(),
                          icon: Icon(Icons.arrow_drop_down),
                          elevation: 0,
                          autofocus: false,
                          underline: Container(),




                          onChanged: (_) {},

                        ),
                      ),
                      const SizedBox(
                        height: paddingLarge/2,
                      ),
                      ConditionalBuilder(condition: state is! RegisterLoadState,
                        builder: (BuildContext context) =>Container(
                          width: double.infinity,
                          child: CustomButton(
                            text: 'Sign Up',
                            backColor: hPrimary,
                            textColor: white,
                            height: 25,
                            width: 40,
                            fontSize: 18,
                            onPressed: ()
                            {
                              if (formKey.currentState!.validate()) {
                                cubit.userRegister(
                                    email: emailController.text,
                                    password: passwordController.text,
                                    firstName: firstNameController.text,
                                    phone: rePasswordController.text,
                                    lastName: lastNameController.text,
                                    country: countryController.text);

                              }

                            },
                            borderColor: white,
                          ),
                        ),
                        fallback: (context)=> Center(child: CircularProgressIndicator()),

                        
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'Already have an Account', style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign in', style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: Colors.black),
                            ),
                          )
                        ],
                      ),


                    ],
                  ),
                ),
              ),
              Positioned(
                top: -12,
                left: 0,
                child: Container(
                  constraints:
                  const BoxConstraints(maxHeight: 70, maxWidth: 70),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Icon material-pets.png',
                        ),
                      )),
                ),
              ),
              Positioned(
                bottom: -20,
                right: 0,
                child: Container(
                  constraints:
                  const BoxConstraints(maxHeight: 100, maxWidth: 100),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Icon material-pets.png',
                        ),
                      )),
                ),
              ),
              Positioned(
                top: 50,
                left: 500,
                child: Container(
                  constraints:
                  const BoxConstraints(maxHeight: 500, maxWidth: 500),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Icon material-pets.png',
                        ),
                      )),
                ),
              ),
            ],
          ),
        );
      },

    );
  }
}
