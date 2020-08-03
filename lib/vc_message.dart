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

Color circleColor1 = Color(0xffFFC69C);
double circleRadius1 = 50;
Color circleColor2 = Color(0xffFFAE73);
double circleRadius2 = 25;

Widget vcMessage(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: height * 0.18,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      //color: Color(0xffFFEBCB),
      color: Color(0xFFFFE7C1),
    ),
    child: Stack(
      overflow: Overflow.clip,
      children: <Widget>[
        Positioned(
          top: -0,
          right: 210,
          child: SvgPicture.asset(
            "assets/images/announce.svg",
            height: 135,
          ),
        ),
        Positioned(
          top: 22,
          left: 125,
          child: Container(
            width: width * 0.5,
            child: Text(
              "Tap here to watch the new message by VC:",
              style: TextStyle(
                fontSize: 13.5,
                color: kTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          top: 62,
          left: 125,
          child: Container(
            width: width * 0.5,
            child: Text(
              "'WE NEED YOU! Let’s reimagine our future together.'",
              style: TextStyle(
                fontSize: 14,
                color: kTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 150,
          child: Container(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: OpenPainter(),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 150,
          child: Container(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: OpenPainter(),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 150,
          child: Container(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: OpenPainter(),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 150,
          child: Container(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: OpenPainter2(),
            ),
          ),
        ),
        Positioned(
          child: Container(
            //color: Colors.blue,

            height: height * 0.18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              //color: Colors.blue,
            ),
          ),
        ),
      ],
    ),
  );
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = circleColor1
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(150, 150), circleRadius1, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class OpenPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = circleColor2
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(150, 150), circleRadius2, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
