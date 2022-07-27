import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: const EdgeInsets.all(paddingLarge),
      constraints: const BoxConstraints(
          maxWidth: double.infinity, maxHeight: 600),
      child: Row(
        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 600,
                height: 500,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/image1.png'),
                      )),
                ),
              ),
            ],
          )),
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
    );
  }
}