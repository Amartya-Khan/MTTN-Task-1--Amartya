import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
// import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
// import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:path_provider/path_provider.dart';

class CourseContent extends StatelessWidget {
  final String number;
  final String event;
  final String title;

  const CourseContent({
    Key key,
    this.number,
    this.event,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              color: Color(0xffFFC542),
              fontSize: height * 0.032,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: width * 0.045),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$event\n",
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: height * 0.017,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: kSubtitleTextSyule.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                    fontSize: height * 0.0195,
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

