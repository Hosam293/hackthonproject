import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/Controller/CacheHelper.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/Cubit/AuthCubit.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/Cubit/AuthStates.dart';

import 'package:petology/view/screens/HomeScreen/AboutScreen/AboutScreen.dart';
import 'package:petology/view/widgets/CustomButton.dart';
import 'package:petology/view/widgets/CustomFormField/CustomTextFormField.dart';

class MainSection extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit,AuthStates>(
      listener: (context,state)
      {
        if(state is LoginSuccessState)
        {
          CacheHelper.saveData(key: 'token', value: '${state.loginModel.token}').then((value)
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>
                    AboutScreen(),
              ),
            );
          });

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
                        'Login',
                        style: Theme
                            .of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: hPrimary),
                      ),
                      const SizedBox(
                        height: paddingLarge,
                      ),
                      CustomFormField(
                        title: 'Email',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
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
                      ConditionalBuilder(
                        condition: state is! LoginLoadState,
                        builder: (BuildContext context) =>Container(
                          width: double.infinity,
                          child: CustomButton(
                            text: 'Login',
                            backColor: hPrimary,
                            textColor: white,
                            height: 25,
                            width: 40,
                            fontSize: 18,
                            onPressed: ()
                            {
                              if(formKey.currentState!.validate())
                              {
                                cubit.userLogin(email: emailController.text, password: passwordController.text);

                              }

                            },
                            borderColor: white,
                          ),
                        ), fallback: (BuildContext context) => Center(child: CircularProgressIndicator()),

                      ),
                      const SizedBox(
                        height: paddingLarge/2,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password?',
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: black),
                            )),
                      ),
                      const SizedBox(
                        height: paddingLarge/2,
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
                        height: paddingLarge/2,
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
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'Dont have an account?', style: Theme
                              .of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign up', style: Theme
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
                top: -140,
                right: 0,
                left: 0,
                child: Container(
                  constraints:
                  const BoxConstraints(maxHeight: 150, maxWidth: 100),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Dog paw-cuate_preview_rev_1.png',
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
