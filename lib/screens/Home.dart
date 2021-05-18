import 'package:flutter/material.dart';
// import 'package:flutter_application_2/screens/Play.dart';
import 'package:flutter_application_2/screens/PlaywithMack.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: Text(
            "Play As You Like",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Colors.cyan,
                boxShadow: [BoxShadow(blurRadius: 1)]),
            width: MediaQuery.of(context).size.width * .5,
            height: MediaQuery.of(context).size.height * .125,
            child: Text(
              "Welcome to MindTrick",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .075),
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 45, color: Colors.grey, spreadRadius: 0),
                ],
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        onPrimary: Colors.pink[700]),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Playbyu()));
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width * .70,
                        height: MediaQuery.of(context).size.height * .1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                          Radius.circular(95),
                        )),
                        child: Center(
                          child: Text("Play",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                        ))),
                Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        onPrimary: Colors.pink[700]),
                    onPressed: () {},
                    child: Container(
                        width: MediaQuery.of(context).size.width * .70,
                        height: MediaQuery.of(context).size.height * .1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                          Radius.circular(95),
                        )),
                        child: Center(
                          child: Text("Exit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 35)),
                        ))),
                Spacer(),
              ],
            ),
          )
        ]));
  }
}
