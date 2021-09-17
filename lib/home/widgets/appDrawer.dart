import 'package:flutter/material.dart';
import 'package:flutter_demo/login/loginScreen.dart';

import '../../Constant.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({required this.permanentlyDisplay, Key? key}) : super(key: key);

  final bool permanentlyDisplay;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with RouteAware {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Drawer(
        child: Row(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Visibility(
                    visible: !(constraints.maxWidth <= 1024),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                      child: Image.asset('assets/images/text_logo.png', height: 50, width: 200),
                    ),
                  ),
                  Visibility(
                    visible: (constraints.maxWidth <= 1024),
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Constants.blueGrey,
                      ),
                      accountName: Text('Alex xender'),
                      accountEmail: Text('alexxender@email.com'),
                      currentAccountPicture: CircleAvatar(
                        child: Icon(Icons.android,color: Constants.blueGrey,),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(PageTitles.home),
                    onTap: () async {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text(PageTitles.logout),
                    onTap: () async {
                      print("object");
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
            if (widget.permanentlyDisplay)
              const VerticalDivider(
                width: 1,
              )
          ],
        ),
      );
    });
  }
}
