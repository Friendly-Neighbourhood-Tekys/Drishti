import 'package:flutter/material.dart';
import 'package:drishti/globals.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  TextEditingController locController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //
        //
        //
        body: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
            child: Column(children: [
              Container(
                  alignment: Alignment.center,
                  width: (MediaQuery.of(context).size.width),
                  height: (MediaQuery.of(context).size.height) - 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 40,
                      left: 10,
                      right: 10,
                      child: Container(
                          alignment: Alignment.center,
                          width: 327,
                          height: MediaQuery.of(context).size.height - 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                            color: Color.fromRGBO(253, 252, 252, 1),
                          ),
                          child: Stack(children: <Widget>[
                            // Search Location

                            TextField(
                              textInputAction: TextInputAction.search,
                              onSubmitted: (value) async {
                                city = locController.text;
                                if (city == 'Safe City') {
                                  alerts = 'No Alerts';
                                } else if (city == 'City') {
                                  alerts = 'Few Alerts';
                                  print('dsfd');
                                } else if (city == 'Danger City') {
                                  alerts = 'Danger';
                                  print('ddaa');
                                } else
                                  () {
                                    alerts = 'Danger';
                                  };
                                setState(() {});
                                print(alerts);
                                if (alerts == 'No Alerts') {
                                  image1 = Image.asset('assets/1.png');
                                  alertdata = ''' ''';
                                } else if (alerts == 'Few Alerts') {
                                  print('dfgfgdfh');
                                  image1 = Image.asset('assets/2.png');
                                  alertdata = '''Some Alerts
dvdsvdxvcxcb
gdgfdgdfgdfg''';
                                } else if (alerts == 'Danger') {
                                  print('dfgfgdfh');
                                  image1 = Image.asset('assets/3.png');
                                  alertdata = '''Some Dangerous Alerts
dvdsvdxvcxcb
gdgfdgdfgdfg''';
                                } else
                                  () {
                                    image1 = Image.asset('assets/3.png');
                                  };
                                setState(() {});
                              },
                              controller: locController,
                              decoration: const InputDecoration(
                                fillColor: Color.fromARGB(64, 240, 240, 240),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: 'Search Location',
                                labelStyle: TextStyle(
                                    color: Color.fromARGB(255, 129, 126, 126),
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 40),
                              child: image1,
                            ),

                            // Main Body
                            Container(
                                alignment: Alignment.center,
                                width: 500,
                                height:
                                    MediaQuery.of(context).size.height - 150,
                                child: Stack(children: <Widget>[
                                  // Location
                                  Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(top: 120),
                                      child: Text(
                                        '$city',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(44, 44, 44, 1),
                                            fontFamily: 'Comfortaa',
                                            fontSize: 50,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )),
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(top: 320),
                                    child: Text(
                                      'Alerts',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(44, 44, 44, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 60,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  ),
                                  // Data
                                  Container(
                                      // ALERTS
                                      padding: EdgeInsets.only(top: 400),
                                      width: 410,
                                      height: 708,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 100,
                                            left: 10,
                                            child: Container(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                width: 350,
                                                height: 120,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                  ),
                                                  color: Color.fromARGB(
                                                      50, 121, 121, 121),
                                                ))),
                                        Container(
                                            alignment: Alignment.topCenter,
                                            padding: EdgeInsets.only(top: 40),
                                            child: Text(
                                              '''\n $alerts''',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontFamily: 'Comfortaa',
                                                  fontSize: 25,
                                                  letterSpacing:
                                                      0.7 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 2),
                                            )),
                                        Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(top: 110),
                                            child: Text(
                                              ''' $alertdata''',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontFamily: 'Comfortaa',
                                                  fontSize: 15,
                                                  letterSpacing:
                                                      0.7 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 2),
                                            ))
                                      ]))

                                  // Data End...
                                ]))
                          ])),
                    ),
                  ])),
            ])));
  }
}
