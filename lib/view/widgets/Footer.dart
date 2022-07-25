import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      constraints: BoxConstraints(maxHeight: MediaQuery
          .of(context)
          .size
          .height * .3, maxWidth: double.infinity),
      color: Colors.black,
      child: Row(
        children:
        [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'For any questions', style: Theme
                          .of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: const Color(0xffFFE3C5),
                          fontSize: 30,
                          height: 1.4),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      left: 0,
                      child: Container(
                        constraints:
                        const BoxConstraints(
                            maxHeight: 60, maxWidth: 60),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/Icon material-pets.png',
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.email, color: Colors.white, size: 40,),
                    const SizedBox(width: 10,),
                    Text(
                      'Email@petology.com', style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.white,
                        fontSize: 30,
                        height: 1.4),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.phone, color: Colors.white, size: 30,),
                    const SizedBox(width: 10,),

                    Text(
                      '01020929592', style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Text(
                      'We are waiting you', style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(
                        color: const Color(0xffFFE3C5), fontSize: 30,height: 1.4),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        constraints:
                        const BoxConstraints(
                            maxHeight: 60, maxWidth: 50),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/Icon material-pets.png',
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.white,
                      size: 40,),
                    const SizedBox(width: 10,),
                    Text(
                      'First settlement/Cairo', style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.white,
                      size: 40,),
                    const SizedBox(width: 10,),

                    Text(
                      'Cairo/Egypt', style: Theme
                        .of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Expanded(child: Container(
            child: Image.asset(
                'assets/images/tamas-pap-kA967nN0jAA-unsplash-removebg-preview.png'),
            constraints: BoxConstraints(maxHeight: MediaQuery
                .of(context)
                .size
                .height * .4, maxWidth: double.infinity),
          ),),
        ],
      ),
    );
  }
}
