import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constants.dart';

class CommingSoonMovieCard extends StatelessWidget {
  const CommingSoonMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight,
              Text(
                "Feb",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                  fontSize: 20,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                  letterSpacing: 4,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 160,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/fm6KqXpk3M2HVveHwCrBSSBaO0V.jpg'))),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kBlackColor.withOpacity(0.5),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.volume_off,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              kHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tall Girl 2",
                    style: TextStyle(
                        color: kWhiteColor,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(
                            CupertinoIcons.bell_fill,
                            color: kWhiteColor,
                            size: 20,
                          ),
                          Text(
                            "Remind Me",
                            style: TextStyle(
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                      kWidth,
                      Column(
                        children: [
                          Icon(
                            CupertinoIcons.info,
                            color: kWhiteColor,
                            size: 20,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                      kWidth,
                    ],
                  )
                ],
              ),
              Text(
                "Comming on friday",
                style: TextStyle(
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              kHeight,
              Text(
                "Tall Gril 2",
                style: TextStyle(
                    color: kWhiteColor,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              kHeight,
              Text(
                "asdasd asdadas dasdadas aa  asdasdas ads asd asdasd. asdasd asd as d asda d a d as dasdasda asdasd asd asd as d as d asd asd as dasd a d  qw re  fg vcxs  fegfergr vrrv ",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: kWhiteColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
