import 'package:flutter/material.dart';
import 'package:yasser/Widgets/Background.dart';
import 'package:yasser/Widgets/MainRoute_AppBar.dart';
import 'package:yasser/Widgets/Notification.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);

  bool opened = true;
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    return Scaffold(
      appBar: MainRoute_AppBar(width: width, title: "الإشعارات"),
      body: Stack(
        children: [
          Background_shape(width: width, height: height),
          Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.builder(
                padding: EdgeInsets.only(top: height * 0.02),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return NotificationWidget(
                      title: "شكراً لإستخدام تطبيق ضاحيتنا",
                      text: "تم توصيل طلبك, شكرًا لإستخدامك تطبيق",
                      time: DateTime.now(),
                      opened: index > 2 ? opened : !opened,
                      width: width);
                }),
          ),
        ],
      ),
    );
  }
}
