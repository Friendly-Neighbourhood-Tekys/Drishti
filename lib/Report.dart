import 'package:flutter/material.dart';

class reportui extends StatefulWidget {
  reportui({Key? key}) : super(key: key);

  @override
  State<reportui> createState() => _MyHomePage();
}

const color1 = Color.fromARGB(255, 68, 68, 68);
const color2 = Color.fromARGB(255, 250, 250, 250);
const color3 = Color.fromARGB(255, 255, 255, 255);

class _MyHomePage extends State<reportui> {
  @override
  final myloc = TextEditingController();
  final myint = TextEditingController();
  final mytyp = TextEditingController();
  final mydet = TextEditingController();
  final myrem = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myloc.dispose();
    myint.dispose();
    mytyp.dispose();
    mydet.dispose();
    myrem.dispose();
    super.dispose();
  }
  //
  //
  //

  @override
  Widget build(BuildContext context) {
    TextEditingController locController = TextEditingController();
    TextEditingController gradController = TextEditingController();
    TextEditingController typController = TextEditingController();
    TextEditingController remarController = TextEditingController();
    return Scaffold(
      backgroundColor: color2,

      //
      //
      //
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                width: 548,
                height: 40,
                child: Stack(children: <Widget>[])),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: Text(''),
            ),
            //
            Container(
                padding: const EdgeInsets.only(top: 10.0),
                width: 330,
                height: 580.0,
                decoration: BoxDecoration(
                    color: color3, borderRadius: BorderRadius.circular(24.0)),
                child: Column(children: [
                  Container(
                      width: 148,
                      height: 70,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 20,
                            left: 0,
                            child: Text(
                              'Report \n',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: color1,
                                  fontFamily: 'Comfortaa',
                                  fontSize: 36,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )),
                      ])),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                    width: 750.0,
                    child: TextField(
                      controller: locController,
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'Location',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 750.0,
                    child: TextField(
                      controller: typController,
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'Type',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 750.0,
                    child: TextField(
                      controller: gradController,
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'Grade',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 750.0,
                    child: TextField(
                      controller: remarController,
                      decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'Remark',
                      ),
                    ),
                  ),
                  Container(
                      height: 50,
                      margin: EdgeInsets.all(15),
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 247, 247, 247),
                        ),
                        child: const Text(
                          ' Report ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 5, 5, 5),
                              fontFamily: 'Comfortaa',
                              fontSize: 25,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        onPressed: () {
                          setState(() {
                            null;
                          });
                        },
                      )),
                ])),
          ],
        ),
      ),
      //
      //
      //
      //
    );
  }
}
