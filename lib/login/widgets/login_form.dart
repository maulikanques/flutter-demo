import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/home/dashboardScreen.dart';

import '../../Constant.dart';

class LoginForm extends StatefulWidget {
  final paddingTopForm,
      fontSizeTextField,
      fontSizeTextFormField,
      spaceBetweenFields,
      iconFormSize;
  final spaceBetweenFieldAndButton,
      widthButton,
      fontSizeButton,
      fontSizeForgotPassword,
      fontSizeSnackBar,
      errorFormMessage;

  LoginForm(
      this.paddingTopForm,
      this.fontSizeTextField,
      this.fontSizeTextFormField,
      this.spaceBetweenFields,
      this.iconFormSize,
      this.spaceBetweenFieldAndButton,
      this.widthButton,
      this.fontSizeButton,
      this.fontSizeForgotPassword,
      this.fontSizeSnackBar,
      this.errorFormMessage);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _userNameValidate = false;
  bool _passwordValidate = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: widthSize(context) * 0.05,
            right: widthSize(context) * 0.05,
            top: heightSize(context) * widget.paddingTopForm),
        child: Column(children: <Widget>[
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Username ',
                  style: TextStyle(
                      fontSize: widthSize(context) * widget.fontSizeTextField,
                      fontFamily: Constants.OPEN_MUSEOSANS,
                      color: Colors.white))),
          TextFormField(
              controller: _usernameController,
              cursorColor: Colors.white,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (value) {
                if (_usernameController.text.isNotEmpty &&
                    _passwordController.text.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                  ;
                }
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                labelStyle: TextStyle(color: Colors.white),
                errorText: _userNameValidate
                    ? "Please enter a valid Username !"
                    : null,
                errorStyle: TextStyle(
                    color: Colors.white,
                    fontSize: widthSize(context) * widget.errorFormMessage),
                prefixIcon: Icon(
                  Icons.person,
                  size: widthSize(context) * widget.iconFormSize,
                  color: Colors.white,
                ),
              ),
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white, fontSize: widget.fontSizeTextFormField)),
          SizedBox(height: heightSize(context) * widget.spaceBetweenFields),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Password',
                  style: TextStyle(
                      fontSize: widthSize(context) * widget.fontSizeTextField,
                      fontFamily: Constants.OPEN_MUSEOSANS,
                      color: Colors.white))),
          TextFormField(
              controller: _passwordController,
              cursorColor: Colors.white,
              keyboardType: TextInputType.text,
              obscureText: true,
              maxLines: 1,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (value) {
                if (_usernameController.text.isNotEmpty &&
                    _passwordController.text.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                  ;
                } else {
                  if (_usernameController.text.isEmpty) {
                    _userNameValidate = true;
                  }
                  if (_passwordController.text.isEmpty) {
                    _passwordValidate = true;
                  }

                  (context as Element).markNeedsBuild();
                }
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                labelStyle: TextStyle(color: Colors.white),
                errorText: _passwordValidate
                    ? "Please enter a valid Password !"
                    : null,
                errorStyle: TextStyle(
                    color: Colors.white,
                    fontSize: widthSize(context) * widget.errorFormMessage),
                prefixIcon: Icon(
                  Icons.lock,
                  size: widthSize(context) * widget.iconFormSize,
                  color: Colors.white,
                ),
              ),
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.white, fontSize: widget.fontSizeTextFormField)),
          SizedBox(
              height: heightSize(context) * widget.spaceBetweenFieldAndButton),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 4.0,
                padding: EdgeInsets.fromLTRB(
                    widget.widthButton, 15, widget.widthButton, 15),
                side: BorderSide(
                    color: Colors.white, width: 2.0, style: BorderStyle.solid),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                enabledMouseCursor: MouseCursor.defer,
                disabledMouseCursor: MouseCursor.uncontrolled,
                alignment: Alignment.bottomCenter,
              ),
              onPressed: () async {
                if (_usernameController.text.isNotEmpty &&
                    _passwordController.text.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                  ;
                } else {
                  if (_usernameController.text.isEmpty) {
                    _userNameValidate = true;
                  }
                  if (_passwordController.text.isEmpty) {
                    _passwordValidate = true;
                  }

                  (context as Element).markNeedsBuild();
                }
              },
              child: Text('Submit',
                  style: TextStyle(
                      fontSize: widthSize(context) * widget.fontSizeButton,
                      fontFamily: Constants.OPEN_MUSEOSANS,
                      color: Color.fromRGBO(41, 187, 255, 1)))),
          SizedBox(height: heightSize(context) * 0.01),
        ]));
  }
}
