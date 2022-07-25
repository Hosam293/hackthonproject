import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/widgets/Footer.dart';
import 'package:petology/view/widgets/Header.dart';

class AdaptionScreen extends StatelessWidget {
  const AdaptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              Stack(
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width,
                        maxHeight: 600),
                    color: hPrimary,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/okeykat-w6elADh_jww-unsplash-removebg-preview.png'),
                        fit: BoxFit.cover,
                      ),
                    ),

                  ),
                  Image.asset('assets/images/299-removebg-preview.png')
                ],
              ),
              Footer()


            ],
          ),
        ),
      ),
    );
  }
}
