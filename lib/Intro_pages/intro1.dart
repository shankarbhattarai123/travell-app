// // ignore_for_file: prefer_const_constructors
// // import 'package:google_fonts/google_fonts.dart';
// // import '../intro2/intro2_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';


// class Intro1 extends StatefulWidget {
//   const Intro1({Key key}) : super(key: key);

//   @override
//   _Intro1State createState() => _Intro1State();
// }

// class _Intro1State extends State<Intro1> {
//    bool _loadingButton1 = false;
//   final _loadingButton2 = false;
  
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
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
//                       clipBehavior: Clip.antiAlias,
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                       ),
//                       child: Image.network(
//                         'https://media.istockphoto.com/photos/aerial-shot-of-houses-scattered-across-a-large-farmland-in-the-nepal-picture-id1326681895?b=1&k=20&m=1326681895&s=170667a&w=0&h=x3mowyEWvKFpCJt1TO8W2YxgsqdsxbgfvHBA3mrSQf8=',
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                       child: Text(
//                         'Explore The City',
//                         style: TextStyle(
//                           fontFamily: 'Noto Sans',
//                           color: Color(0xFF3F51B5),
//                           fontSize: 30,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                     Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Padding(
//                            padding:
//                               EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
//                           child: Text(
//                             '\"investigate or search out\" When you explore a new place, you want to see interesting things and get to know its people',
//                             style: TextStyle(
//                               fontFamily: 'Poppins',
//                               fontSize: 18,
//                               fontStyle: FontStyle.italic,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsetsDirectional.fromSTEB(
//                               0, 50, 0, 50),
//                           child: TextButton.icon(
//                             onPressed: () async {
//                               setState(() => _loadingButton1 = true);
//                               try {
//                                 await Navigator.push(
//                                   context,
//                                   PageTransition(
//                                     type: PageTransitionType.rightToLeft,
//                                     duration: const Duration(milliseconds: 500),
//                                     reverseDuration:
//                                         const Duration(milliseconds: 500),
//                                     child: const Text("Next"),
//                                   ),
//                                 );
//                               } finally {
//                                 setState(() => _loadingButton1 = false);
//                               }
//                             },
//                             label: const Text("Next"),
//                             icon: const Icon(
//                               Icons.next_plan_sharp,
//                               color: Color(0xFF34E06F),
//                               size: 30,
//                             ),
//                             options: FFButtonOptions(
//                               width: 130,
//                               height: 40,
//                               color:const Color(0xFFC434E0),
//                               textStyle: const TextStyle(
//                                 fontFamily: 'Poppins',
//                                 color: Colors.white,
//                                 fontSize: 19,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               borderSide:const BorderSide(
//                                 color: Colors.transparent,
//                                 width: 1,
//                               ),
//                               borderRadius: 20,
//                             ),
//                             // loading: _loadingButton1,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 50),
//                           child: TextButton.icon(
//                             label: const Text("Skip"),
//                             onPressed: () {
//                               print('Button pressed ...');
//                             },
                      
//                             icon: const Icon(
//                               Icons.skip_next_sharp,
//                               color: Color(0xFFFFEBEE),
//                               size: 30,
//                             ),
//                             options: FFButtonOptions(
//                               width: 130,
//                               height: 40,
//                               color:const Color(0xF45BCF11),
//                               textStyle:const TextStyle(
//                                 fontFamily: 'Poppins',
//                                 color: Colors.white,
//                                 fontSize: 19,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               borderSide: const BorderSide(
//                                 color: Colors.transparent,
//                                 width: 1,
//                               ),
//                               borderRadius: 20,
//                             ),
//                             loading: _loadingButton2,
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
