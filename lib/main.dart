import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Controller/CacheHelper.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/Cubit/AuthCubit.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/LoginScreen.dart';
import 'package:petology/view/screens/AuthScreens/LoginAndSignUpScreen/SignUpScreen.dart';
import 'package:petology/view/screens/HomeScreen/AboutScreen/AboutScreen.dart';
import 'package:petology/view/screens/HomeScreen/AdaptionScreen/Adaption.dart';
import 'package:petology/view/screens/HomeScreen/AdaptionScreen/AdaptionDataScreen.dart';
import 'package:petology/view/screens/HomeScreen/AdaptionScreen/HelpScreen.dart';
import 'package:petology/view/screens/HomeScreen/AdaptionScreen/RequestScreen.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/widgets/AboutWidegts/SectionFive.dart';

import 'Constants/styles.dart';
import 'Controller/DioHelper.dart';
import 'view/screens/HomeScreen/AdaptionScreen/HowToFeedScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  await CacheHelper.init();
  token = CacheHelper.getData(key: 'token');
  Widget startScreen;
  if (token != null) {
    startScreen = AboutScreen();
  } else {
    startScreen = LoginScreen();
  }

  runApp(MultiBlocProvider(providers: [
    BlocProvider<AuthCubit>(create: (context) => AuthCubit()),
    BlocProvider<AppCubit>(
        create: (context) => AppCubit()
          ..getInfoData()
          ..getFirstSectionData()
          ..getHowToFeedData()
            ..getFilterData()..getFindData('breed')

    )
  ], child: MyApp(token: token, startScreen: startScreen)));
}

class MyApp extends StatelessWidget {
  var token;
  Widget startScreen;

  MyApp({this.token, required this.startScreen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter hackathon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          labelLarge: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          labelMedium: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontSize: 20, color: Colors.white),
          labelSmall: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(fontSize: 15, color: Colors.white),
        ),
      ),
      home: startScreen,
    );
  }
}
