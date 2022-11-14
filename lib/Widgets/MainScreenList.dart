import 'package:flutter/material.dart';

class MainScreenList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
              title: Text(
            "سبلسيبسيب",
            style: TextStyle(fontSize: 19),
          )),
        );
      },
      itemCount: 6,
    );
  }
}
