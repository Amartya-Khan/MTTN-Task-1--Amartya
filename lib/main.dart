import 'package:course_app/signin.dart';

import 'details_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course App',
      theme: ThemeData(
        primaryColor: Colors.grey[50],
      ),
      home: SignIn(), 
      //DetailsScreen(),
    );
  }
}



