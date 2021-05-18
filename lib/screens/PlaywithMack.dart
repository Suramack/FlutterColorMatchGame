import 'dart:ui';

import "package:flutter/material.dart";
import 'dart:math';

// import 'package:flutter_application_2/screens/Play.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int _counter = 0, _primary = 0;
  int _elvb00 = 0,
      _elvb01 = 0,
      _elvb02 = 0,
      _elvb10 = 0,
      _elvb11 = 0,
      _elvb12 = 0,
      _elvb20 = 0,
      _elvb21 = 0,
      _elvb22 = 0;
  double _width = 0;
  List<Color> _colors = <Color>[
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.orange,
  ];

  Random randomIndex = new Random();
  void pointCalc(int _colorCheck) {
    if (_primary == _colorCheck) {
      _counter++;
    } else if (_counter > 0) {
      _counter--;
    }
  }

  // void checkAllcolor() {
  //   if (_primary != _elvb00 &&
  //       _primary != _elvb01 &&
  //       _primary != _elvb02 &&
  //       _primary != _elvb10 &&
  //       _primary != _elvb11 &&
  //       _primary != _elvb12 &&
  //       _primary != _elvb20 &&
  //       _primary != _elvb21 &&
  //       _primary != _elvb22) {
  //     print("Not Match with primary");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Crack The Color'),
        ),
        body: Column(
          children: [
            Container(
                child: Text(
              '$_counter',
              style:
                  TextStyle(fontSize: _width * .25, color: _colors[_primary]),
            )),
            Container(
                width: _width * .4,
                height: _width * .2,
                color: _colors[_primary = randomIndex.nextInt(7)]),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(_width * .1),
              child: Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 4)]),
                  child: Column(children: [
                    Spacer(),
                    Container(
                      child: Row(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            //First ROW ElevatedButtons
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb00 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              // checkAllcolor();
                              setState(() {
                                pointCalc(_elvb00);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb01 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              // checkAllcolor();
                              setState(() {
                                pointCalc(_elvb01);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb02 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              setState(() {
                                pointCalc(_elvb02);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      //2nd Row ElevationButtons
                      child: Row(
                        children: [
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb10 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              setState(() {
                                pointCalc(_elvb10);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb11 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              setState(() {
                                pointCalc(_elvb11);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb12 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              setState(() {
                                pointCalc(_elvb12);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Row(
                        //3rd Row ElevatedButton
                        children: [
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb20 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              setState(() {
                                pointCalc(_elvb20);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb21 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              setState(() {
                                pointCalc(_elvb21);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary:
                                  _colors[_elvb22 = randomIndex.nextInt(7)],
                            ),
                            onPressed: () {
                              setState(() {
                                pointCalc(_elvb22);
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 70,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    Spacer(),
                  ])),
            ),
            Spacer()
          ],
        ));
  }
}
