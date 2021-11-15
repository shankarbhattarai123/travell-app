import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'place.dart';

class DescriptionPageWidget extends StatefulWidget {
  @override
  _DescriptionPageWidgetState createState() => _DescriptionPageWidgetState();
}

class _DescriptionPageWidgetState extends State<DescriptionPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Future<List<Place>> getData() async {
    String url="http://192.168.254.3/php/read.php";
    final response = await http.get(Uri.parse(url));
    print(response.body);
    return  placeFromJson(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color(0xFF090F13),
          automaticallyImplyLeading: false,
          leading: Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 32,
          ),
          title: Text(
            'place detail',
            style: TextStyle(
              fontFamily: 'Lexend Deca',
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        backgroundColor: Color(0xFF262D34),
        body: FutureBuilder<List<Place>>(
          future: getData(),
          builder: (ctx, snap) {
            if (snap.hasData) {
              return ListView.builder(
                itemCount:snap.data.length,
                itemBuilder: (ctx, i) {
                  Place place=snap.data[i];
                return ListTile(
                  leading: Icon(Icons.place),
                  title: Text('${place.address}'),
                  subtitle: Text('${place.address}'),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SecondRoute()),
                    // );
                  },
                );
              });
            } else {
              return CircularProgressIndicator();
            }
          },
        )
        //  SingleChildScrollView(
        //   child: Column(
        //     mainAxisSize: MainAxisSize.max,
        //     children: [
        //       Row(
        //         mainAxisSize: MainAxisSize.max,
        //         children: [
        //           Image.asset(
        //             'assets/images/john-arano-h4i9G-de7Po-unsplash.jpg',
        //             width: MediaQuery.of(context).size.width,
        //             height: 230,
        //             fit: BoxFit.cover,
        //           )
        //         ],
        //       ),
        //       Padding(
        //         padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
        //         child: Row(
        //           mainAxisSize: MainAxisSize.max,
        //           children: [
        //             Expanded(
        //               child: Text(
        //                 'Hill park',
        //                 style: TextStyle(
        //                   fontFamily: 'Lexend Deca',
        //                   color: Colors.white,
        //                   fontSize: 22,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
        //         child: Row(
        //           mainAxisSize: MainAxisSize.max,
        //           children: [
        //             Expanded(
        //               child: Text(
        //                 'butwal-9 Rupandehi, Nepal',
        //                 style: TextStyle(
        //                   fontFamily: 'Lexend Deca',
        //                   color: Color(0xFF39D2C0),
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.w500,
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
        //         child: Row(
        //           mainAxisSize: MainAxisSize.max,
        //           children: [
        //             Expanded(
        //               child: Text(
        //                 'The best of all 3 worlds, Row & Flow offers high intensity rowing and strength intervals followed by athletic based yoga sure to enhance flexible and clear the mind. Yoga mats are provided but bringing your own yoga mat is highly encouraged.',
        //                 style: TextStyle(
        //                   fontFamily: 'Lexend Deca',
        //                   color: Color(0xFF8B97A2),
        //                   fontSize: 14,
        //                   fontWeight: FontWeight.normal,
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
        //         child: Row(
        //           mainAxisSize: MainAxisSize.max,
        //           children: [
        //             Expanded(
        //               child: Padding(
        //                 padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
        //                 child: Text(
        //                   '30min to go / 2km form here / Natural place ',
        //                   style: TextStyle(
        //                     fontFamily: 'Lexend Deca',
        //                     color: Color(0xFF39D2C0),
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.normal,
        //                   ),
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //       Padding(
        //         padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 24),
        //         child: RaisedButton(
        //           onPressed: () {},
        //           child: Text(
        //             'Lets Go',
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
