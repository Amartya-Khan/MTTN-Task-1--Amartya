// class HomeView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

//     return Scaffold(
//       backgroundColor: Global.white,
//       body: Stack(
//         children: <Widget>[
//           Container(
//             height: size.height - 200,
//             color: Global.mediumBlue,
//           ),
//           AnimatedPositioned(
//             duration: Duration(milliseconds: 500),
//             curve: Curves.easeOutQuad,
//             top: keyboardOpen ? -size.height / 3.7 : 0.0,
//             child: WaveWidget(
//               size: size,
//               yOffset: size.height / 3.0,
//               color: Global.white,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 100.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   'Login',
//                   style: TextStyle(
//                     color: Global.white,
//                     fontSize: 40.0,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(30.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 TextFieldWidget(
//                   hintText: 'Email',
//                   obscureText: false,
//                   prefixIconData: Icons.mail_outline,
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: <Widget>[
//                     TextFieldWidget(
//                       hintText: 'Password',
                      
//                       prefixIconData: Icons.lock_outline,
                      
//                     ),
//                     SizedBox(
//                       height: 10.0,
//                     ),
//                     Text(
//                       'Forgot password?',
//                       style: TextStyle(
//                         color: Global.mediumBlue,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 ButtonWidget(
//                   title: 'Login',
//                   hasBorder: false,
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 ButtonWidget(
//                   title: 'Sign Up',
//                   hasBorder: true,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }