import 'package:flutter/material.dart';
import 'dart:math';

class Playbyu extends StatefulWidget {
  @override
  _PlaybyuState createState() => _PlaybyuState();
}

class _PlaybyuState extends State<Playbyu> {
  int _counter = 0;

  int _a = 0;
  int _b = 0;
  int _selectedColorIndex = 0;
  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

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

  Color _selectedColor;
  List<Color> _randomColors = [];
  Random randomGen = new Random();
  @override
  void initState() {
    generateRandomColors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carck It")),
      body: Column(children: [
        Container(
          child: Row(
            children: [
              Spacer(),
              Container(
                decoration: BoxDecoration(color: Colors.lightGreenAccent),
                child: Text(
                  "Point: $_counter",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      shadows: [BoxShadow(blurRadius: 1)]),
                ),
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {
                    _reset();
                  },
                  child: Text("Reset")),
              Spacer(),
            ],
          ),
        ),
        Spacer(),
        Container(
          // Main Container for Random color Box
          width: MediaQuery.of(context).size.width * .1,
          height: MediaQuery.of(context).size.height * .05,
          color: _colors[_a = randomGen.nextInt(7)],
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(left: 30),
          width: MediaQuery.of(context).size.width * .85,
          height: MediaQuery.of(context).size.height * .51,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(blurRadius: 4)]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Center(
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * .75,
                  height: MediaQuery.of(context).size.height * .5,
                  child: Column(
                    children: [
                      for (int _index = 0; _index < 4; _index++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: _randomColors[_index]),
                              onPressed: () {
                                _selectedColor = _randomColors[_index];
                                printIndex(_selectedColor);
                                generateRandomColors();
                                setState(() {
                                  _selectedColorIndex = _b;
                                });
                              },
                              child: Container(
                                width: 40,
                                height: 70,
                              )),
                        ),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        Spacer(),
      ]),
    );
  }

  generateRandomColors() {
    _randomColors.clear();
    for (int _index = 0; _index < 4; _index++) {
      _randomColors.add(_colors[randomGen.nextInt(4)]);
    }
  }

  printIndex(Color _colorPassed) {
    for (var i = 0; i < 7; i++) {
      if (_colorPassed == _colors[i]) {
        if (_a == i) {
          _counter++;
        } else {
          _counter--;
        }
      }
    }
  }
}
