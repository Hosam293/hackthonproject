import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/LoginScreen.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/SignUpScreen.dart';
import 'package:petology/view/screens/HomeScreen/AboutScreen/AboutScreen.dart';
import 'package:petology/view/widgets/AboutWidegts/SectionFive.dart';
import 'package:petology/view/widgets/AboutWidegts/SectionFour.dart';
import 'package:petology/view/widgets/AuthWidgets/LoginScreen/MenuItem.dart';
import 'package:petology/view/widgets/CustomButton.dart';

class Header extends StatefulWidget {
  List<GlobalKey>? sections ;

  Header({this.sections});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
            colors: gradient
        ),
      ),
      height: MediaQuery.of(context).size.height * .1,
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 40,
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * .1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuItem(
                    title: 'About us',
                    onTap: () {
                     setState(() {
                       Scrollable.ensureVisible(widget.sections![2].currentContext!);
                       if (token != null) {
                         Navigator.pushReplacement(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => AboutScreen()));
                       } else {
                         Navigator.pushReplacement(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => LoginScreen()));
                       }
                     });
                    },
                  ),
                  MenuItem(
                    title: 'Categories',
                    onTap: ()
                    {

                    },

                  ),
                  MenuItem(title: 'Services'),
                  MenuItem(title: 'Request'),
                ],
              ),
            ),
          ),
          if (token == null)
            Row(
              children: [
                CustomButton(
                  text: 'Sign up',
                  backColor: Colors.grey,
                  textColor: white,
                  height: 20,
                  width: 40,
                  fontSize: 14,
                  onPressed: ()
                  {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  borderColor: hPrimary,
                ),
                const SizedBox(
                  width: paddingLarge / 2,
                ),
                CustomButton(
                  text: 'Login',
                  backColor: Colors.transparent,
                  textColor: white,
                  height: 20,
                  width: 40,
                  fontSize: 14,
                  onPressed: ()
                  {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                  },
                  borderColor: hPrimary,
                ),
              ],
            )
        ],
      ),
    );
  }
}
