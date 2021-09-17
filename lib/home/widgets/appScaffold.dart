import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo/Constant.dart';
import 'appDrawer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({required this.body, required this.pageTitle, Key? key}) : super(key: key);
  final Widget body;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return Row(
      children: [
        if (!displayMobileLayout)
          const AppDrawer(
            permanentlyDisplay: true,
          ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: displayMobileLayout,
              title: Center(
                  child: displayMobileLayout
                      ? Padding(
                          padding: EdgeInsets.all(45.0),
                          child: Image.asset('assets/images/text_logo.png',color: Colors.white, height: 50, width: 200),
                        )
                      : Text(
                          "Welcome to the Flutter Demo",
                          style: TextStyle(color: displayMobileLayout ? Colors.white : Constants.blueGrey),
                        )),
              backgroundColor: displayMobileLayout ? Constants.blueGrey : Colors.grey.shade50,
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.supervised_user_circle_sharp,
                      color: displayMobileLayout ? Colors.white : Constants.blueGrey,
                      size: 30,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                )
              ],
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
                    permanentlyDisplay: false,
                  )
                : null,
            body: body,
          ),
        )
      ],
    );
  }
}
