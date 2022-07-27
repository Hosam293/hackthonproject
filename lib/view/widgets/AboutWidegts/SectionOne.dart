import 'package:flutter/material.dart';
import 'package:petology/Constants/styles.dart';

class SectionOne extends StatelessWidget {
 String? title;

 SectionOne({this.title, this.body});

  String? body;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: 600),
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
            colors: gradient
        ),
      ),
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(paddingLarge * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontSize: 33, height: 1.7),
                    ),
                    const SizedBox(
                      height: paddingLarge / 2,
                    ),
                    Text(
                      '$body ',
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(
                      height: paddingLarge,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*.2,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Help Them',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          ),

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*.6,
                  height: MediaQuery.of(context).size.height*.8,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/image1.png'),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}