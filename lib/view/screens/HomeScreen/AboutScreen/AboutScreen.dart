import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';
import 'package:petology/view/widgets/CustomButton.dart';
import 'package:petology/view/widgets/Header.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width, maxHeight: 600),
                color: hPrimary,
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(paddingLarge * 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Not only people \nNeed A house',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(fontSize: 33, height: 1.7),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata ',
                            style:
                                Theme.of(context).textTheme.labelSmall!.copyWith(
                                      height: 1.4,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * .2,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(flex: 2),
                                Text(
                                  'Help Them',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: black,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 120,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: white,
                            ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(

                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.1),
                                      blurRadius: 15,
                                      offset: Offset(5, 3),
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/alvan-nee-brFsZ7qszSY-unsplash-removebg-preview_preview_rev_1.png'),

                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: white,
                padding: EdgeInsets.all(paddingLarge),
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                  maxHeight: 600

                ),
                child: Row(
                  children:
                  [
                    Expanded(child: Column()),
                    Expanded(child: Stack(
                     children:
                     [
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children:
                         [
                           Text(
                             'About Petology',style: Theme.of(context).textTheme.labelLarge!.copyWith(
                               fontSize: 30,
                               fontWeight: FontWeight.bold,
                               color: Colors.black
                           ),
                           ),
                           SizedBox(
                             height: paddingLarge,

                           ),
                           Text(
                             'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata ',
                             style:
                             Theme.of(context).textTheme.labelSmall!.copyWith(
                                 height: 1.4,
                                 color: black
                             ),
                           ),

                         ],
                       ),
                       Positioned(
                         top: 50,
                         right: 70,
                         bottom: 50,
                         child: Container(
                           constraints:
                           const BoxConstraints(maxHeight: 300, maxWidth: 300),
                           decoration: const BoxDecoration(
                               image: DecorationImage(
                                 image: AssetImage(
                                   'assets/images/Icon materia3l-pets.png',
                                 ),
                               )),
                         ),
                       )
                     ],
                    )),

                  ],
                ),
              ),
              Container(
                color: Color(0xffF1F1F1),
                constraints: BoxConstraints(
                  maxHeight: 600
                ),
                width: double.infinity,
                child: Column(
                  children:
                  [
                    Text(
                      'Lets get this right ....',style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35
                    ),
                    ),
                    Text(
                      'What kind of friend you looking for?',style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: black,
                      fontSize: 20
                    ),
                    ),

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
