import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/widgets/CustomCard.dart';
import 'package:petology/view/widgets/CustomCard.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final List<String> title;
  final List<String> image;

  @override
  Widget build(BuildContext context) {
    var cubit=BlocProvider.of<AppCubit>(context);
    return Container(
      color: const Color(0xffF1F1F1),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: paddingLarge*2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Container(
                constraints:
                const BoxConstraints(
                    maxHeight: 100, maxWidth: 100),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icons/Icon material-pets.png',
                      ),
                    )),
              ),
              Text(
                'Lets get this right ....',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ],
          ),
          const SizedBox(
            height: paddingLarge / 2,
          ),
          Text(
            'What kind of friend you looking for?',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: black.withOpacity(.5), fontSize: 30),
          ),
          const SizedBox(
            height: paddingLarge ,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(title.length, (index)
              {

                return CustomCard(title: title[index], image: image[index],
                index: index,);

              }
          ),

          )],
      ),
    );
  }
}