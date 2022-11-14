import 'package:flutter/material.dart';
import 'package:yasser/utilities/my_flutter_app_icons.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    return Padding(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: GestureDetector(
        onTap: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black87,
            ),
            SizedBox(width: width * 0.05),
            Expanded(
                child: Text(
              text,
              style: TextStyle(color: Colors.black87, fontSize: width * 0.06),
            )),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(width * 0.015),
              child: Icon(
                MyFlutterApp.more_arrow,
                color: Colors.black38,
                size: width * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
