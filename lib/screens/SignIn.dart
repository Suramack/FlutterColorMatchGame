import 'package:flutter/material.dart';
import 'package:flutter_application_2/loadingwidget/loadingWidget.dart';
import 'package:flutter_application_2/screens/PlayScreen.dart';
import 'package:flutter_application_2/screens/SignUp.dart';
import 'package:flutter_application_2/services/auth.dart';
import 'package:flutter/rendering.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  double _width = 0;
  double _height = 0;
  String email = '';
  String password = '', error = '';
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return loading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              bottom: PreferredSize(
                preferredSize: Size(50, 50),
                child: Text(""),
              ),
              backgroundColor: Colors.purple[400],
              title: Text("Login"),
              actions: <Widget>[
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[400],
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    icon: Icon(Icons.person),
                    label: Text("Sign Up"))
              ],
            ),
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: _width * .11),
                  width: _width * .75,
                  height: _width * .75,
                  decoration: BoxDecoration(
                      color: Colors.purple[400],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.purple[800])
                      ]),
                  child: Column(
                    children: [
                      Container(
                        width: _width * .7,
                        height: _width * .7,
                        child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Spacer(),
                                //email textfield
                                TextFormField(
                                  validator: (value) => value.isEmpty
                                      ? "Enter a valid email"
                                      : null,
                                  onChanged: (value) {
                                    setState(() => email = value);
                                  },
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      errorStyle:
                                          TextStyle(color: Colors.white),
                                      labelText: "Email id",
                                      labelStyle: TextStyle(
                                          color: Colors.grey[200],
                                          fontSize: 17)),
                                ),
                                Spacer(),
                                //password textfield
                                TextFormField(
                                  obscureText: true,
                                  validator: (value) => value.length < 6
                                      ? 'Please cross check Your password'
                                      : null,
                                  onChanged: (value) {
                                    setState(() => password = value);
                                  },
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      errorStyle:
                                          TextStyle(color: Colors.white),
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                          color: Colors.grey[200],
                                          fontSize: 17)),
                                ),
                                Spacer(),
                                //login Elevated Button
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.purple),
                                    onPressed: () async {
                                      if (_formKey.currentState.validate()) {
                                        setState(() => loading = true);
                                        dynamic result = await _auth
                                            .signInWithEmailAndPassword(
                                                email, password);

                                        if (result == null) {
                                          setState(() {
                                            error =
                                                "Enter yor email and password correctly";
                                            loading = false;
                                          });
                                        } else {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayScreen()));
                                        }
                                      }
                                    },
                                    child: Container(
                                        padding: EdgeInsets.all(8.0),
                                        width: 60,
                                        height: 40,
                                        child: Text(
                                          "Log In",
                                          textAlign: TextAlign.center,
                                        ))),
                                Spacer(),
                                SizedBox(
                                  height: 20.0,
                                  child: Text(
                                    error,
                                    style: TextStyle(color: Colors.red),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
