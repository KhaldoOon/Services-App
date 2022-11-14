import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yasser/utilities/my_flutter_app_icons.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
    required this.opened,
    required this.width,
    required this.title,
    required this.text,
    required this.time,
  }) : super(key: key);

  final bool opened;
  final double width;
  final String title;
  final String text;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[opened ? 200 : 300],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  MyFlutterApp.order_complete,
                  color: Colors.grey[600],
                  size: width * 0.09,
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(title, style: TextStyle(fontSize: width * 0.06)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(text,
                            style: TextStyle(
                                fontSize: width * 0.042,
                                color: Colors.grey[500])),
                        Text(
                            time.hour.toString() + ":" + time.minute.toString(),
                            style: TextStyle(
                              fontSize: width * 0.03,
                              color: Colors.grey[500],
                            )),
                      ],
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ],
          ),
          SvgPicture.string(Line),
        ],
      ),
    );
  }
}

const String Line =
    '<svg width="490" height="2" viewBox="0 0 390 2"><path d="M0,0H390" transform="translate(0 1)" fill="none" stroke="#cfcfcf" stroke-width="2"/></svg>';
