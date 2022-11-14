import 'package:flutter/material.dart';
import 'package:yasser/screens/regist&sign_in/sign-in.dart';
import 'package:yasser/utilities/my_flutter_app_icons.dart';

class MainRoute_AppBar extends StatelessWidget with PreferredSizeWidget {
  const MainRoute_AppBar({
    Key? key,
    required this.width,
    required this.title,
  }) : super(key: key);

  final double width;
  final String title;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(MyFlutterApp.sign_out, color: Color(0xFF1092A6)),
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const SignIn()));
        },
      ),
      backgroundColor: Color(0xFFF9F9F9),
      elevation: 2,
      title: Padding(
          padding: EdgeInsets.only(left: width * 0.21),
          child: Text(title, style: TextStyle(color: Color(0xFF1092A6)))),
    );
  }
}
