import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/PlayScreen.dart';

class Levels extends StatefulWidget {
  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  double _width = 0;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/levels.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 50, top: 230),
                  width: _width * .14,
                  height: _width * .14,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(blurRadius: 10, color: Colors.grey)
                  ]),
                  child: ElevatedButton(
                    child: Text('1'),
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlayScreen()));
                    }),
                  )),
              Container(
                margin: EdgeInsets.only(right: 90, top: 6),
                width: _width * .14,
                height: _width * .14,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)]),
                child: ElevatedButton(
                  child: Text('2'),
                  onPressed: (() {}),
                ),
              ),
              Container(),
            ],
          ),
        ));
  }
}
