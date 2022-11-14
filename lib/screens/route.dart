import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../utilities/my_flutter_app_icons.dart';
import '../utilities/Constant.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  DateTime pre_backpress = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final timeGap = DateTime.now().difference(pre_backpress);
        final cantExit = timeGap >= Duration(seconds: 2);
        pre_backpress = DateTime.now();
        if (cantExit) {
          //show snack
          const snack = SnackBar(
            content: Text(
              'Press Back button again to Exit',
              style: TextStyle(color: Colors.black87),
            ),
            duration: Duration(seconds: 2),
            backgroundColor: Color(0xF9D1EBEF),
            shape: StadiumBorder(),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(30),
          );
          ScaffoldMessenger.of(context).showSnackBar(snack);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            color: Color(0xFFF9F9F9),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: GNav(
                padding: EdgeInsets.all(16),
                activeColor: Color(0xFF1092A6),
                tabBackgroundColor: Color(0xFFD1EBEF),
                backgroundColor: Color(0xFFF9F9F9),
                gap: 8,
                haptic: false,
                tabs: [
                  GButton(icon: Icons.home, text: "الرئيسية"),
                  GButton(icon: MyFlutterApp.service, text: "الخدمات"),
                  GButton(icon: MyFlutterApp.notification, text: "الإشعارات"),
                  GButton(icon: MyFlutterApp.account, text: "حسابي")
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
        body: widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
