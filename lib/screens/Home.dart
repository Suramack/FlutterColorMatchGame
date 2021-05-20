import 'package:flutter/material.dart';
// import 'package:flutter_application_2/screens/Play.dart';
import 'package:flutter_application_2/screens/PlayScreen.dart';
import 'package:flutter_application_2/screens/SignUp.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .001),
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
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .001),
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
                    //Play Elevated Button
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        onPrimary: Colors.pink[700]),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlayScreen()));
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
                    //Exit Elevated Button
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
          ),
          Spacer(),
          Container(
            child: Row(
              children: [
                Spacer(
                  flex: 2,
                ),
                Text(
                  "Login to save your top score ",
                  style: TextStyle(color: Colors.grey[600], fontSize: 15),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child:
                        Text("Sign in", style: TextStyle(color: Colors.white))),
                Spacer(),
              ],
            ),
          ),
          Spacer(
            flex: 3,
          ),
        ]));
  }
}
