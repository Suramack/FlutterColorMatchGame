import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  double _width;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Create Your Account"),
      ),
      body: Column(
        children: [
          Spacer(),
          Container(
            //Outer Box
            margin: EdgeInsets.all(_width * .11),
            width: _width * .75,
            height: _width * .75,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)],
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white),
            child: Column(children: [
              Spacer(),
              Container(
                //First Text Field Name
                width: _width * .7,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    labelText: "Name",
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: _width * .7,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Email id",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                ),
              ),
              Spacer(),
              Container(
                width: _width * .7,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "Password",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      ))),
                ),
              ),
              Spacer(),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Sig In"),
                ),
              ),
              Spacer(),
            ]),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
