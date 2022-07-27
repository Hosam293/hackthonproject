import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';

class CustomCard extends StatelessWidget {
  String title;
  int? index;

  CustomCard({required this.title, required this.image, this.index
  });

  String image;

  @override
  Widget build(BuildContext context) {


    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state)
      {
        var cubit = BlocProvider.of<AppCubit>(context);
        return InkWell(
          onTap: () {
            cubit.changeSelectItem(index);

          },
          onHover: (value) {
            cubit.changeHoverState(value);


          },
          hoverColor: Colors.transparent,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: cubit.selectedItem == index ?  hSecond:white,
              boxShadow: [if(cubit.isHover)
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
              border: Border.all(
                color: Colors.black.withOpacity(0.3),
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 20, horizontal: 20),
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    image,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),


              ],
            ),
          ),
        );
      },
    );
  }
}
