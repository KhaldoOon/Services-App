import 'package:flutter/material.dart';
import 'package:yasser/Widgets/Background.dart';
import 'package:yasser/Widgets/ProfileMenu.dart';
import 'package:yasser/Widgets/ProfilePic.dart';
import 'package:yasser/utilities/Constant.dart';
import 'package:yasser/utilities/my_flutter_app_icons.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: height * 0.08),
          child: Stack(
            children: [
              Background_shape(width: width, height: height),
              Column(
                children: [
                  ProfilePic(url: "images/profile.png"),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(width * 0.08),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                              "مؤيد نوفل",
                            ),
                            Positioned(
                              left: -width * 0.1,
                              bottom: height * 0.01,
                              child: Icon(MyFlutterApp.more_arrow,
                                  size: width * 0.04),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Text("0946575258")
                      ],
                    ),
                  ),
                  Container(
                    decoration: kImageTextCardDecoration,
                    margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        ProfileMenu(
                          text: "حسابي",
                          icon: MyFlutterApp.account,
                          press: () {},
                        ),
                        Divider(
                          color: Colors.black,
                          endIndent: width * 0.09,
                          indent: 30,
                        ),
                        ProfileMenu(
                          text: "سجل الطلبات",
                          icon: MyFlutterApp.order_history,
                          press: () {},
                        ),
                        Divider(
                          color: Colors.black,
                          endIndent: width * 0.09,
                          indent: 30,
                        ),
                        ProfileMenu(
                          text: "الإشعارات",
                          icon: MyFlutterApp.notification,
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                  Container(
                    decoration: kImageTextCardDecoration,
                    margin: EdgeInsets.symmetric(horizontal: width * 0.08),
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        ProfileMenu(
                          text: "معلومات عنا",
                          icon: MyFlutterApp.info,
                          press: () {},
                        ),
                        Divider(
                          color: Colors.black,
                          endIndent: width * 0.09,
                          indent: 30,
                        ),
                        ProfileMenu(
                          text: "اتصل بنا",
                          icon: MyFlutterApp.contact_us,
                          press: () {},
                        ),
                        Divider(
                          color: Colors.black,
                          endIndent: width * 0.09,
                          indent: 30,
                        ),
                        ProfileMenu(
                          text: "تسجيل الخروج",
                          icon: MyFlutterApp.sign_out,
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
