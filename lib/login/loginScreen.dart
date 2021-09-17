import 'package:flutter/material.dart';
import 'package:flutter_demo/Constant.dart';
import 'package:flutter_demo/login/widgets/loginForm.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.lightBlue,
        body: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: SingleChildScrollView(
              child: SafeArea(
                  child: Container(
                height: constraints.maxWidth <= 1024 ? heightSize(context) : heightSize(context) * 0.65,
                width: constraints.maxWidth <= 1024 ? widthSize(context) : widthSize(context) * 0.40,
                child: Card(
                  elevation: constraints.maxWidth <= 1024 ? 0 : 5,
                  margin: EdgeInsets.zero,
                  child: Container(
                      decoration: BoxDecoration(
                        gradient:
                            LinearGradient(begin: Alignment.topRight, end: Alignment.bottomLeft, colors: [Colors.blueGrey, Colors.lightBlueAccent]),
                      ),
                      padding: constraints.maxWidth <= 1024 ? EdgeInsets.zero : EdgeInsets.only(top: 20),
                      child: Column(children: [
                        Image.asset('assets/images/logo.png',
                            height: constraints.maxWidth <= 1024 ? heightSize(context) * 0.3 : heightSize(context) * 0.2,
                            width: constraints.maxWidth <= 1024 ? widthSize(context) * 0.6 : widthSize(context) * 0.15),
                        Visibility(
                          child: SizedBox(height: 20),
                          visible: !(constraints.maxWidth <= 1024),
                        ),
                        constraints.maxWidth <= 1024
                            ? LoginForm(0.007, 0.04, widthSize(context) * 0.04, 0.06, 0.04, 0.07, widthSize(context) * 0.09, 0.05, 0.032, 0.04, 0.032)
                            : LoginForm(0, 0.009, 16, 0.04, 0.01, 0.04, 75, 0.01, 0.007, 0.01, 0.006)
                      ])),
                ),
              )),
            ),
          );
        }));
  }
}
