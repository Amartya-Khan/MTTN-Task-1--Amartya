import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'header-svg.dart';
import 'package:course_app/constants.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_plugin.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'vc_message.dart';
import 'constants.dart';
import 'list_element_class.dart';
import 'package:flutter/widgets.dart';
import 'ui/widgets/button_widget.dart';
import 'ui/widgets/textfield_widget.dart';
import 'ui/widgets/wave_widget.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

login() {
  googleSignIn.signIn();
}

logout() {
  googleSignIn.signOut();
}

class _SignInState extends State<SignIn> {
  bool isAuth = false;
  @override
  void initState() {
    super.initState();
    // Detects when user signed in
    googleSignIn.onCurrentUserChanged.listen((account) {
      handleSignIn(account);
    }, onError: (err) {
      print('Error signing in: $err');
    });
    // Reauthenticate user when app is opened
    googleSignIn.signInSilently(suppressErrors: false).then((account) {
      handleSignIn(account);
    }).catchError((err) {
      print('Error signing in: $err');
    });
  }

  handleSignIn(GoogleSignInAccount account) {
    if (account != null) {
      print('User signed in!: $account');
      setState(() {
        isAuth = true;
      });
    } else {
      setState(() {
        isAuth = false;
      });
    }
  }

  Scaffold buildUnAuthScreen() {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        //alignment: Alignment.center,
        children: <Widget>[
          Positioned(child:Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              //stops: [0.15, 0.4, 0.8],

              colors: [Colors.orange[800].withAlpha(90),Colors.orange[800].withAlpha(150),]

              )),
          ),),
            //left:200,
           
          Positioned(
            top: height/6,
            //left: width/6.3,
            child:Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child:SvgPicture.asset('assets/images/main-logo.svg', height: 250,),),),



            AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: 0.0,
            child: WaveWidget(
              size: MediaQuery.of(context).size,
              yOffset: height / 1.35,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: height/1.8,
            left: 25,
            child:Text(
            'SlcM Notifications',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 40.0,
              color: Colors.white,
            ),
          ),),
          Positioned(
            top: height/1.15,
            left: width/4.4,
            child:Container(
            width: 200,
            child: FlatButton(
                onPressed: login,
                color: Colors.orange[800].withAlpha(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.orange)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 30,
                      child: SvgPicture.asset("assets/images/google-icon.svg"),
                    ),
                    Spacer(),
                    Text('Sign In with Google')
                  ],
                )),
          ),),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isAuth ? DetailsScreen() : buildUnAuthScreen();
  }
}

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
      decoration: BoxDecoration(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.08),
          child: AppBar(
            elevation: 0.0,
            actions: [
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.015, vertical: width * 0.02),
                  child: Container(
                      width: 42,
                      height: 45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/mit.png"))))),
            ],
          ),
        ),
        drawer: Container(
          color: Color(0xffFFF3EB),
          child: Drawer(
              child: ListView(
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(bottom: height * 0.2, top: height * 0.85),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        "Sign out",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ),
                    color: Color(0xffFFC69C),
                    onPressed: logout,
                  ),
                ),
              ),
            ],
          )),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                      Color(0xffFFF3EB),
                      Colors.white,
                    ],
                  ),
                ),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: height * 0.05,
                          ),
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
                                number: "06",
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
                                number: "07",
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
                                number: "08",
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
