import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppCubit.dart';
import 'package:petology/view/screens/HomeScreen/AppCubit/AppStates.dart';
import 'package:petology/view/widgets/CustomContainer.dart';
import 'package:petology/view/widgets/CustomFormField/CustomTextFormField.dart';
import 'package:petology/view/widgets/Footer.dart';
import 'package:petology/view/widgets/Header.dart';

class Adaption extends StatelessWidget {
  var titleController = TextEditingController();
  List<String> names = [
    'breed',
    'ages',
    'size',
    'goodWith',
    'gender',
    'colors',
    'hairLength',
    'behaviour',
  ];


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<AppCubit>(context);
        List name =
        [
          cubit.sendFilterModel!.breed!,
          cubit.sendFilterModel!.size!,
          cubit.sendFilterModel!.ages!,
          cubit.sendFilterModel!.behaviour!,
          cubit.sendFilterModel!.gender!,
          cubit.sendFilterModel!.colors!,
          cubit.sendFilterModel!.goodWith!,
          cubit.sendFilterModel!.hairLength!,

        ];
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  SizedBox(height: paddingLarge / 2),
                  Container(
                    width: double.infinity,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: paddingLarge,
                          childAspectRatio: 3,
                          mainAxisSpacing: 1,
                          crossAxisCount: 4),


                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(paddingLarge / 4),
                      children:
                      [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge),
                              child: Text(
                                'breed',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: paddingLarge / 4,
                            ),
                            CustomFormField(
                              title: '',
                              readonly: true,
                              titleController: titleController,
                              type: TextInputType.text,
                              borderRadius: 10,
                              suffixIcon: DropdownButton<String>(
                                items:

                                cubit.sendFilterModel!.breed!.map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      titleController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),


                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),
                                onChanged: (_) {},
                              ),

                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge),
                              child: Text(
                                'size',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: paddingLarge / 4,
                            ),
                            CustomFormField(
                              title: '',
                              readonly: true,
                              titleController: titleController,
                              type: TextInputType.text,
                              borderRadius: 10,
                              suffixIcon: DropdownButton<String>(
                                items:

                                cubit.sendFilterModel!.ages!.map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      titleController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),


                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),
                                onChanged: (_) {},
                              ),

                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge),
                              child: Text(
                                'goodWith',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: paddingLarge / 4,
                            ),
                            CustomFormField(
                              title: '',
                              readonly: true,
                              titleController: titleController,
                              type: TextInputType.text,
                              borderRadius: 10,
                              suffixIcon: DropdownButton<String>(
                                items:

                                cubit.sendFilterModel!.size!.map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      titleController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),


                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),
                                onChanged: (_) {},
                              ),

                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge),
                              child: Text(
                                'title',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: paddingLarge / 4,
                            ),
                            CustomFormField(
                              title: '',
                              readonly: true,
                              titleController: titleController,
                              type: TextInputType.text,
                              borderRadius: 10,
                              suffixIcon: DropdownButton<String>(
                                items:

                                cubit.sendFilterModel!.goodWith!.map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      titleController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),


                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),
                                onChanged: (_) {},
                              ),

                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge),
                              child: Text(
                                'Gender',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: paddingLarge / 4,
                            ),
                            CustomFormField(
                              title: '',
                              readonly: true,
                              titleController: titleController,
                              type: TextInputType.text,
                              borderRadius: 10,
                              suffixIcon: DropdownButton<String>(
                                items:

                                cubit.sendFilterModel!.ages!.map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      titleController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),


                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),
                                onChanged: (_) {},
                              ),

                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge),
                              child: Text(
                                'colors',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: paddingLarge / 4,
                            ),
                            CustomFormField(
                              title: '',
                              readonly: true,
                              titleController: titleController,
                              type: TextInputType.text,
                              borderRadius: 10,
                              suffixIcon: DropdownButton<String>(
                                items:

                                cubit.sendFilterModel!.colors!.map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      titleController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),


                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),
                                onChanged: (_) {},
                              ),

                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge),
                              child: Text(
                                'hairLength',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: paddingLarge / 4,
                            ),
                            CustomFormField(
                              title: '',
                              readonly: true,
                              titleController: titleController,
                              type: TextInputType.text,
                              borderRadius: 10,
                              suffixIcon: DropdownButton<String>(
                                items:

                                cubit.sendFilterModel!.hairLength!.map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      titleController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),


                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),
                                onChanged: (_) {},
                              ),

                            ),


                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: paddingLarge),
                              child: Text(
                                'behaviour',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: paddingLarge / 4,
                            ),
                            CustomFormField(
                              title: '',
                              readonly: true,
                              titleController: titleController,
                              type: TextInputType.text,
                              borderRadius: 10,
                              suffixIcon: DropdownButton<String>(
                                items:

                                cubit.sendFilterModel!.behaviour!.map((String value) {
                                  return DropdownMenuItem<String>(
                                    onTap: () {
                                      titleController.text = value;
                                    },
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),


                                icon: Icon(Icons.arrow_drop_down),
                                elevation: 0,
                                autofocus: false,
                                underline: Container(),
                                onChanged: (_) {},
                              ),

                            ),


                          ],
                        ),

                      ],

            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(paddingLarge * 2),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: paddingLarge * 2,
                mainAxisSpacing: paddingLarge,
                childAspectRatio: 1 / 1.3,
                crossAxisCount: 3),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) =>
                CustomContainer(
                  backColor: Color(0xffEAEAEA),
                  dogName: 'roy',
                  sharedName: 'hossam',

                ),
          ),
          Text('Show more', style: Theme
              .of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: black),),
          SizedBox(
            height: paddingLarge,
          ),

          const Footer()
          ],
        ),)
        ,
        )
        ,
        );
      },
    );
  }
}
