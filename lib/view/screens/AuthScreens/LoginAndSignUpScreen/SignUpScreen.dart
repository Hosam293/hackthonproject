import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/widgets/AuthWidgets/SignUpScreen/MainSection.dart';

import 'package:petology/view/widgets/Footer.dart';
import 'package:petology/view/widgets/Header.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 1,
          child: NestedScrollView(
            headerSliverBuilder: (context, value){
              return [
                 SliverAppBar(
                  floating: true,
                  pinned: true,
                  snap: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Header(),
                  ),
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),

                  MainSectionSignUp(),
                  const SizedBox(
                    height: paddingLarge * 2,
                  ),
                  const Footer(),
                ],
              ),
            ),

          ),
        ),
      ),
    );
  }
}
