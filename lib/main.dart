import 'details_screen.dart';
import 'package:flutter/material.dart';

// import 'package:course_app/constants.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
// import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
// import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:path_provider/path_provider.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course App',
      theme: ThemeData(),
      home: DetailsScreen(),
    );
  }
}



