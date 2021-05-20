import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/screens/PlayScreen.dart';
import 'package:flutter_application_2/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  double _width;
  double _height;
  String name = '', email = '', password = '', error = '';
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            child: Form(
              key: _formKey,
              child: Column(children: [
                Spacer(),
                Container(
                  //First Text Field Name
                  width: _width * .7,
                  child: TextFormField(
                    validator: (value) =>
                        value.isEmpty ? "Enter a NickName " : null,
                    onChanged: (value) {
                      setState(() => name = value);
                    },
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
                  child: TextFormField(
                    validator: (value) =>
                        value.isEmpty ? "Enter Your email" : null,
                    onChanged: (value) {
                      setState(() => email = value);
                    },
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
                  child: TextFormField(
                    validator: (value) => value.length < 6
                        ? "Password should be greater than 6 character"
                        : null,
                    onChanged: (value) {
                      setState(() => password = value);
                    },
                    obscureText: true,
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
                  //Sign up Elevated Button
                  child: ElevatedButton(
                    child: Text("Sign Up"),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        dynamic result = await _auth
                            .registerWithEmailAndPassword(email, password);
                        if (result == null) {
                          setState(() => error = "Enter a Valid Email");
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlayScreen()));
                        }
                      }
                    },
                  ),
                ),
                SizedBox(
                    height: 20.0,
                    child: Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    )),
              ]),
            ),
          ),
          Spacer(),
          Container(
            //Play as guest elevated button
            width: _width * .5,
            height: _height * .07,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
              ),
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print('error occured');
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PlayScreen()));
                }
              },
              child: Text(
                "Play As Guest",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }
}
