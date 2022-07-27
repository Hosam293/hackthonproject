import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var cubit = BlocProvider.of<AppCubit>(context);
        return ConditionalBuilder(
          condition: cubit.infoModel != null,
          builder: (context)=>Container(
            constraints: BoxConstraints(maxHeight: MediaQuery
                .of(context)
                .size
                .height * .3, maxWidth: double.infinity),
            decoration:  const BoxDecoration(
              gradient:  LinearGradient(
                  colors: gradient
              ),
            ),
            child: Row(
              children:
              [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(paddingLarge/2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              constraints:
                              const BoxConstraints(
                                  maxHeight: 60, maxWidth: 60),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Icon material11-pets.png',
                                    ),
                                  )),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'For any questions', style: Theme
                                  .of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: const Color(0xffFFE3C5),
                                  fontSize: 30,
                                  height: 1.4),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.email, color: Colors.white, size: 40,),
                            const SizedBox(width: 10,),
                            Text(
                              '${cubit.infoModel!.email}', style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: hSecond,
                                fontSize: 30,
                                height: 1.4),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.phone, color: Colors.white, size: 30,),
                            const SizedBox(width: 10,),

                            Text(
                              '${cubit.infoModel!.phone}', style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: hSecond, fontSize: 25),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(paddingLarge/2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              constraints:
                              const BoxConstraints(
                                  maxHeight: 60, maxWidth: 50),
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/Icon material11-pets.png',
                                    ),
                                  )),
                            ),
                            Text(
                              'We are waiting you', style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                color: const Color(0xffFFE3C5), fontSize: 30,height: 1.4),
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on, color: Colors.white,
                              size: 40,),
                            const SizedBox(width: 10,),
                            Text(
                              '${cubit.infoModel!.location}', style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: hSecond, fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_on, color: Colors.white,
                              size: 40,),
                            const SizedBox(width: 10,),

                            Text(
                              '${cubit.infoModel!.location2}', style: Theme
                                .of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: hSecond, fontSize: 25),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(child: Container(
                  child: Image.asset(
                      'assets/images/tamas-pap-kA967nN0jAA-unsplash-removebg-preview.png'),
                  constraints: BoxConstraints(maxHeight: MediaQuery
                      .of(context)
                      .size
                      .height * .4, maxWidth: double.infinity),
                ),),
              ],
            ),
          ),
          fallback: (context)=> LinearProgressIndicator(),
        );
      },
    );
  }
}
