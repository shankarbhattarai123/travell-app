// // ignore_for_file: prefer_const_constructors
// import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:page_transition/page_transition.dart';

// class Intro3Widget extends StatefulWidget {
//  const Intro3Widget({Key key}) : super(key: key);

//   @override
//   _Intro3WidgetState createState() => _Intro3WidgetState();
// }

// class _Intro3WidgetState extends State<Intro3Widget> {
//   final _loadingButton = false;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       body: SafeArea(
//         child: Padding(
//           padding:const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Card(
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 color: const Color(0xFFF5F5F5),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Container(
//                       width: 250,
//                       height: 250,
//                       clipBehavior: Clip.antiAlias,
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                       ),
//                       child: Image.network(
//                         'https://nepaltraveller.com/images/main/1605092930.sidetrackimagebutwal.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                    const Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                       child: Text(
//                         'Add New Place',
//                         style: TextStyle(
//                           fontFamily: 'Noto Sans',
//                           color: Color(0xF45BCF11),
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                       child: Text(
//                         'Explore and add new places by yoursellf with photos,description and location',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Color(0xFFE91E63),
//                           fontSize: 22,
//                           fontWeight: FontWeight.normal,
//                           fontStyle: FontStyle.italic,
//                         ),
//                       ),
//                     ),
//                     Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
//                           child: TextButton.icon(
//                             label: const Text("Get Started"),
//                             onPressed: () {
                            
//                             },
                            
//                             icon: const Icon(
//                               Icons.login_rounded,
//                               color: Color(0xFF0E0E0F),
//                               size: 40,
//                             ),
//                             options: FFButtonOptions(
//                               width: 250,
//                               height: 80,
//                               color: const Color(0xFFF4072B),
//                               textStyle:const TextStyle(
//                                 fontFamily: 'Poppins',
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                               borderSide:  const BorderSide(
//                                 color: Colors.transparent,
//                                 width: 1,
//                               ),
//                               borderRadius: 50,
//                             ),
//                             loading: _loadingButton,
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
