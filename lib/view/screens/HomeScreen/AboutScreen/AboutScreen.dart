import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                    maxHeight: 600),
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
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                  height: 1.4,
                                ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * .2,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Spacer(flex: 2),
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
                                const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
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
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: white,
                            ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.1),
                                      blurRadius: 15,
                                      offset: const Offset(5, 3),
                                    ),
                                  ],
                                  image: const DecorationImage(
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
                padding: const EdgeInsets.all(paddingLarge),
                constraints: const BoxConstraints(
                    maxWidth: double.infinity, maxHeight: 600),
                child: Row(
                  children: [
                    Expanded(child: Column()),
                    Expanded(
                        child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About Petology',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                            ),
                            const SizedBox(
                              height: paddingLarge,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \nsed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata ',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(height: 1.4, color: black),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 50,
                          right: 70,
                          bottom: 50,
                          child: Container(
                            constraints: const BoxConstraints(
                                maxHeight: 300, maxWidth: 300),
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
                color: const Color(0xffF1F1F1),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: paddingLarge*2),
                child: Column(
                  children: [
                    Text(
                      'Lets get this right ....',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Text(
                      'What kind of friend you looking for?',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: black.withOpacity(.5), fontSize: 20),
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(title.length, (index) => CustomCard(title: title[index], image: image[index]),)
                    ),

                  ],
                ),
              ),
              Container(
                color: white,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: paddingLarge*2),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Text(
                          'Our friends who  \nlooking for a house',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                          textAlign: TextAlign.center,

                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            constraints:
                            const BoxConstraints(maxHeight: 80, maxWidth: 100 ),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/Icon material444-pets.png',
                                  ),
                                )),
                          ),
                        )

                      ],
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: paddingLarge / 2),
                        padding: EdgeInsets.symmetric(vertical: paddingLarge / 2),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.3),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: paddingLarge / 3, horizontal: paddingLarge / 2),
                              height: 160,
                              width: 120,
                              child: Image.asset(
                                'assets/images/Icon awesome-dog.png',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'roy',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: CustomButton(
                                text: 'Read more',
                                fontSize: 15,
                                backColor: white,
                                borderColor: hPrimary,
                                height: 15,
                                width: 40,
                                onPressed: (){},
                                textColor:black,





                              ),
                            )


                          ],
                        ),
                      )),
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .2,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: hPrimary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(flex: 2),
                          Text(
                            'Show More',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: black,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Container(
                color: const Color(0xffF1F1F1),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: paddingLarge*2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Text(
                          'How to take care of  \nyour friends? ',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                          textAlign: TextAlign.center,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            constraints:
                            const BoxConstraints(maxHeight: 80, maxWidth: 100 ),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/Icon material444-pets.png',
                                  ),
                                )),
                          ),
                        )

                      ],
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: paddingLarge / 2),
                        padding: EdgeInsets.symmetric(vertical: paddingLarge / 2),
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.3),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: paddingLarge / 3, horizontal: paddingLarge / 2),
                              height: 160,
                              width: 120,
                              child: Image.asset(
                                'assets/images/Icon awesome-dog.png',
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'roy',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: CustomButton(
                                text: 'Read more',
                                fontSize: 15,
                                backColor: white,
                                borderColor: hPrimary,
                                height: 15,
                                width: 40,
                                onPressed: (){},
                                textColor:black,





                              ),
                            )


                          ],
                        ),
                      )),
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * .2,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: hPrimary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(flex: 2),
                          Text(
                            'Show More',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: black,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Footer()


            ],
          ),
        ),
      ),
    );
  }
}


