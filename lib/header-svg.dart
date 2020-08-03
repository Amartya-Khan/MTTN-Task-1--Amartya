import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
// import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
// import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:path_provider/path_provider.dart';
// import 'doc_paths.dart';
// import 'vc_message.dart';

Widget header(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Positioned(
    bottom: 1.0,
    child: Stack(
      children: <Widget>[
        Positioned(
          left: 115,
          top: 0,
          child: SvgPicture.asset(
            "assets/images/test.svg",
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
                  Colors.white.withAlpha(90),
                  // Colors.white.withAlpha(70),
                  // Colors.white.withAlpha(60),
                  Colors.white.withAlpha(70),
                  Colors.white.withAlpha(100),
                  Colors.white.withAlpha(150),
                  Colors.white.withAlpha(220),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          child: Text("Notifications", style: kHeadingextStyle),
        ),
        Positioned(
          child: Container(
            height: height * 0.252,
            width: double.infinity,
          ),
        ),
      ],
      overflow: Overflow.visible,
    ),
  );
}
