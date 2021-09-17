import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo/home/widgets/appScaffold.dart';
import 'package:flutter_demo/home/widgets/cardTile.dart';

import '../Constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      pageTitle: PageTitles.home,
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          child: Column(
            children: [
              Visibility(
                visible: constraints.maxWidth <= 1024,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text('Welcome to Flutter Demo',
                          style: TextStyle(fontSize: widthSize(context) * 0.06, fontFamily: Constants.OPEN_MUSEOSANS, color: Colors.black))),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              constraints.maxWidth <= 1024
                  ? Container(
                      height: heightSize(context) - 200,
                      child: PageView.builder(
                          controller: PageController(viewportFraction: 0.8),
                          physics: AlwaysScrollableScrollPhysics(),
                          itemCount: kTileList.length,
                          itemBuilder: (BuildContext context, int index) => CardTile(
                                contactMeModel: kTileList[index],
                              )),
                    )
                  : Wrap(
                    direction: Axis.horizontal,
                    spacing: 8,
                    runSpacing: 12,
                    children: List.generate(
                        kTileList.length,
                        (index) => CardTile(
                              contactMeModel: kTileList[index],
                            )),
                  ),
            ],
          ),
        );
      }),
    );
  }
}
