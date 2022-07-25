import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/view/screens/AuthScreens/LoginScreen/SignUpScreen.dart';
import 'package:petology/view/screens/HomeScreen/AboutScreen/AboutScreen.dart';
import 'package:petology/view/screens/HomeScreen/AboutScreen/HelpScreen.dart';
import 'package:petology/view/screens/HomeScreen/HomeScreen.dart';

import 'view/screens/AuthScreens/LoginScreen/LoginScreen.dart';
import 'view/widgets/AuthWidgets/Cubit/AuthCubit.dart';

void main() {
  runApp( MultiBlocProvider(providers:
  [
    BlocProvider<AuthCubit>(create: (context)=>AuthCubit())
  ],
  child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
             textTheme: TextTheme(
          labelLarge: Theme.of(context).textTheme.bodyText1!.copyWith(
          fontSize: 30,
          color: Colors.white,
              fontWeight: FontWeight.bold
      ),
      labelMedium: Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 20,
          color: Colors.white
      ),
      labelSmall: Theme.of(context).textTheme.displaySmall!.copyWith(
          fontSize: 15,
          color: Colors.white
      ),
    ),
      ),
      home:  AboutScreen(),
    );
  }
}
