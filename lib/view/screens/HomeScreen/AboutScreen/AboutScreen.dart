import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';
import 'package:petology/view/widgets/AboutWidegts/SectionFive.dart';
import 'package:petology/view/widgets/AboutWidegts/SectionFour.dart';
import 'package:petology/view/widgets/AboutWidegts/SectionOne.dart';
import 'package:petology/view/widgets/AboutWidegts/SectionThree.dart';
import 'package:petology/view/widgets/AboutWidegts/SectionTwo.dart';
import 'package:petology/view/widgets/CustomButton.dart';
import 'package:petology/view/widgets/CustomCard.dart';
import 'package:petology/view/widgets/Footer.dart';
import 'package:petology/view/widgets/Header.dart';

class AboutScreen extends StatelessWidget {
List<String> title=
[
  'Dogs',
  'Cats',
];List<String> image=
[
  'assets/images/Icon awesome-dog.png',
  'assets/images/Icon awesome-cat.png',
];
List<GlobalKey> sections = [
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),
  GlobalKey(),

];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var cubit = BlocProvider.of<AppCubit>(context);
        return Scaffold(
          body: SafeArea(
            child:  DefaultTabController(
              length: 1,
              child: NestedScrollView(
                headerSliverBuilder: (context, value){
                  return [
                    SliverAppBar(
                      floating: true,
                      pinned: true,
                      snap: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Header(
                          sections: sections,
                        ),
                      ),
                    ),
                  ];
                },
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      SectionOne(
                        body: cubit.firstSectionModel!.body,
                        title: cubit.firstSectionModel!.title,
                      ),
                      SectionTwo(
                        key: sections[2],
                      ),
                      SectionThree(title: title, image: image),
                      SectionFour(),
                      SectionFive(),
                      Footer()


                    ],
                  ),
                ),

              ),
            ),
          ),
        );
      },
    );
  }
}











