import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/model/Static/HomePage/PetNeeds.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';
import 'package:petology/view/widgets/CustomButton.dart';

class SectionFive extends StatelessWidget {
  const SectionFive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var cubit = BlocProvider.of<AppCubit>(context);
        return Container(
          color: const Color(0xffF1F1F1),
          width: double.infinity,
          height: 700,
          padding: const EdgeInsets.symmetric(
              vertical: paddingLarge, horizontal: paddingLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    constraints:
                    const BoxConstraints(maxHeight: 80, maxWidth: 100),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/icons/Icon material-pets.png',
                          ),
                        )),
                  ),
                  Text(
                    'How to take care of  \nyour friends? ',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: black, fontWeight: FontWeight.bold, fontSize: 35),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
              const SizedBox(
                height: paddingLarge / 4,
              ),
              Wrap(
                spacing: 50, // gap between adjacent chips
                runSpacing: paddingLarge,
                alignment: WrapAlignment.center,// gap between lines
                children: List.generate(petNeeds.length, (index) => Container(
                  height: 200,
                  width: 250,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/Ellipse 12.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(
                            '${petNeeds[index].image}',
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: paddingLarge /2,
                          ),
                          Text(
                            '${petNeeds[index].title}',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                              color: Color(0xffFFE3C5),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ),
            ],
          ),
        );
      },
    );
  }
}
