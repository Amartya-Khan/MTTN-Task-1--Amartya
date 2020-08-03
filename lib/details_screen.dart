import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'vc_message.dart';
import 'header-svg.dart';
import 'constants.dart';
import 'list_element_class.dart';
import 'pdf_open.dart';

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

    Future<String> mechatronicsPdf() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath2);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath2';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> mechPdf() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath3);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath3';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> ccePdf() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath4);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath4';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> icePdf() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath5);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath5';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> ecePdf() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath6);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath6';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> eeePdf() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath7);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath7';

      final file = await File(tempDocumentPath).create(recursive: true);
      file.writeAsBytesSync(list);
      return tempDocumentPath;
    }

    Future<String> csPdf() async {
      final ByteData bytes =
          await DefaultAssetBundle.of(context).load(documentPath8);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final tempDocumentPath = '${tempDir.path}/$documentPath8';

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
              padding: EdgeInsets.only( top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width*0.05),
                        child:SvgPicture.asset("assets/icons/menu.svg"),),
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
                  header(context),
                  vcMessage(context),
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
                                title: "Time Table- Mechatronics",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    mechatronicsPdf().then((path) {
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
                                title: "Time Table- Mechanical & IP",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    mechPdf().then((path) {
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
                                number: "04",
                                event: 'BROADCAST',
                                title: "Time Table- IT & CCE",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    ccePdf().then((path) {
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
                                number: "05",
                                event: 'BROADCAST',
                                title: "Dept of ICE",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    icePdf().then((path) {
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
                                number: "05",
                                event: 'BROADCAST',
                                title: "Time Table- E&C",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    ecePdf().then((path) {
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
                                number: "05",
                                event: 'BROADCAST',
                                title: "Time Table- EEE",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    eeePdf().then((path) {
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
                                number: "05",
                                event: 'BROADCAST',
                                title: "Time Table- CS",
                              ),
                              Spacer(),
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: height * 0.025),
                                child: IconButton(
                                  icon: Icon(Icons.remove_red_eye,
                                      color: Colors.orange),
                                  onPressed: () {
                                    csPdf().then((path) {
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
