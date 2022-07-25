import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/widgets/AuthWidgets/LoginScreen/MenuItem.dart';
import 'package:petology/view/widgets/CustomButton.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.center,
      color: hPrimary,
      height: MediaQuery
          .of(context)
          .size
          .height * .1,
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 40,
          ),
          Expanded(
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(
                    title: 'Home',
                  ),
                  MenuItem(title: 'About us'),
                  MenuItem(title: 'Contact us'),
                  MenuItem(title: 'Help'),
                ],
              ),
            ),
          ),
          Row(
            children: [
              CustomButton(
                text: 'Sign up',
                backColor: Colors.grey,
                textColor: white,
                height: 20,
                width: 40,
                fontSize: 14,
                onPressed: () {},
                borderColor: hPrimary,
              ),
              const SizedBox(width: paddingLarge / 2,),
              CustomButton(
                text: 'Login',
                backColor: Colors.transparent,
                textColor: white,
                height: 20,
                width: 40,
                fontSize: 14,
                onPressed: () {},
                borderColor: hPrimary,
              ),


            ],
          )
        ],
      ),
    );
  }
}
