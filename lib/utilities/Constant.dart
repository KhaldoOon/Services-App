import 'package:flutter/material.dart';
import 'package:yasser/screens/notification.dart';
import 'package:yasser/screens/account.dart';
import 'package:yasser/screens/services.dart';
import 'package:yasser/screens/main.dart';

final List<Widget> widgetOptions = <Widget>[
  MainScreen(),
  ServiceScreen(),
  NotificationScreen(),
  AccountScreen(),
];

class Strings {
  static var stepOneTitle = "كافة أنواع الخدمات";
  static var stepOneContent =
      "يقدم التطبيق العديد من الخدمات من إلكترونية إلى خدمات طبية وصحية ومهن عامة";
  static var stepTwoTitle = "كافة أنواع الخدمات";
  static var stepTwoContent =
      "يقدم التطبيق العديد من الخدمات من إلكترونية إلى خدمات طبية وصحية ومهن عامة";
  static var stepThreeTitle = "تكسي الضاحية";
  static var stepThreeContent =
      "يقدم التطبيق خدمة طلب سيارة صعوداً أو نزولاً مع السعر والتقييم الخاص لكل سيارة";
}

const kBlackColorText = TextStyle(color: Colors.black87);
final kImageTextCardDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.white60,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 5,
    ),
  ],
);
