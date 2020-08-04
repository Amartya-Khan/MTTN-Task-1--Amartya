import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget header(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Positioned(
    bottom: 1.0,
    child: Stack(
      children: <Widget>[
        Positioned(
          left: 135,
          top: 0,
          child: SvgPicture.asset(
            "assets/images/test2.svg",
            height: 220,
          ),
        ),
        Positioned(
          //left: 105,
          top: -30,
          child: Container(
            height: 230,
            width: width,
            // color: Colors.white.withAlpha(100),

            decoration: BoxDecoration(
              //color: Colors.white.withAlpha(100)
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                //stops: [0.05, 0.99],
                colors: [
                  //Colors.white.withAlpha(150),
                  Colors.grey[50].withAlpha(90),
                  // Colors.white.withAlpha(70),
                  // Colors.white.withAlpha(60),
                  Colors.grey[50].withAlpha(70),
                  Colors.grey[50].withAlpha(100),
                  Colors.white.withAlpha(150),
                  Colors.white.withAlpha(220),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 17,
          child: Text("Notifications", style: kHeadingextStyle),
        ),
        Positioned(
          child: Container(
            height: height * 0.24,
            width: double.infinity,
          ),
        ),
      ],
      overflow: Overflow.visible,
    ),
  );
}
