import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'doc_paths.dart';

Color circleColor1 = Color(0xffFFC69C);
double circleRadius1 = 50;
Color circleColor2 = Color(0xffFFAE73);
double circleRadius2 = 25;

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    Future<String> prepareTestPdf() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath1);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath1';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> prepareTestPdf2() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath1);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath2';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> prepareTestPdf3() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath1);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath3';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> prepareTestPdf4() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath1);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath4';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }
    Future<String> prepareTestPdf5() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath1);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath1';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }
    Future<String> prepareTestPdf6() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath1);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath6';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }
    Future<String> prepareTestPdf7() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath1);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath7';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4EF),
      ),
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SvgPicture.asset("assets/icons/menu.svg"),
                      Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/images/mit.png"))))
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Positioned(
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
                  ),
                  Container(
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45)),
                  //color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.2, 0.99],
                    colors: [
                      //Colors.white.withAlpha(150),

                      Color(0xffFFF3EB),
                      // Colors.white.withAlpha(70),
                      // Colors.white.withAlpha(60),

                      Colors.white,
                    ],
                  ),

                  //color: Color(0xffFFF3EB),

                  //  color: Color(0xffFFE7C1).withAlpha(90)
                ),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              CourseContent(
                                number: "01",
                                event: 'BROADCAST',
                                title: "Time Table- Media Technology",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    prepareTestPdf().then((path) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              FullPdfViewerScreen(path),
                                        ),
                                      );
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              CourseContent(
                                number: "02",
                                event: 'BROADCAST',
                                title: "Notification 2",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    prepareTestPdf().then((path) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              FullPdfViewerScreen(path),
                                        ),
                                      );
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              CourseContent(
                                number: "03",
                                event: 'BROADCAST',
                                title: "Notification 3",
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_red_eye,
                                    color: Colors.orange),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              CourseContent(
                                number: "04",
                                event: 'BROADCAST',
                                title: "Notification 1",
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_red_eye,
                                    color: Colors.orange),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              CourseContent(
                                number: "05",
                                event: 'BROADCAST',
                                title: "Notification 1",
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_red_eye,
                                    color: Colors.orange),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
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

class FullPdfViewerScreen extends StatelessWidget {
  final String pdfPath;

  FullPdfViewerScreen(this.pdfPath);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
          title: Text("Document"),
        ),
        path: pdfPath);
  }
}
