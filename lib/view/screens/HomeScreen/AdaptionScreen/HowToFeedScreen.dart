import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';
import 'package:petology/view/widgets/Footer.dart';
import 'package:petology/view/widgets/Header.dart';

class HowToFeedScreen extends StatelessWidget {
  const HowToFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var cubit = BlocProvider.of<AppCubit>(context);
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                        maxHeight: 600
                    ),
                    decoration: const BoxDecoration(
                      gradient:  LinearGradient(
                          colors: gradient
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  width: 750,
                                  height: 600,
                                  child: Stack(
                                    children: [
                                      Stack(
                                        alignment: AlignmentDirectional.topCenter,
                                        children: [
                                          Image.asset('assets/images/299-removebg-preview.png',fit: BoxFit.cover,height: double.infinity,),
                                          Image.asset('assets/icons/Rectangle 42.png',fit: BoxFit.fill,height: 300,width: double.infinity,),


                                        ],
                                      ),
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          right: 0,

                                          child: Image.asset('assets/icons/okeykat-w6elADh_jww-unsplash-removebg-preview.png',height: 300,width: double.infinity,fit: BoxFit.cover,)),

                                    ],
                                  ),
                                ),


                              ],
                            )),
                      ],
                    ),
                  ),
                  ConditionalBuilder(
                    condition: cubit.howToFeedModel != null,
                    builder: (context)=>Container(
                      width: double.infinity,
                      color: white,
                      child: Column(
                        children: [

                          Container(
                            width: double.infinity,
                            color: white,
                            padding: EdgeInsets.symmetric(vertical: paddingLarge),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge*2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${cubit.howToFeedModel!.title}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                      color: black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: paddingLarge,
                                  ),
                                  Text(
                                    '${cubit.howToFeedModel!.body}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                      color: black,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    fallback: (context)=> Center(child: CircularProgressIndicator()),
                  ),

                  Footer()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
