import 'package:flutter/material.dart';
import 'package:yasser/Widgets/Background.dart';
import 'package:yasser/Widgets/TextFieldWithIcon.dart';
import 'package:yasser/screens/route.dart';
import 'package:yasser/utilities/my_flutter_app_icons.dart';
import 'package:yasser/Widgets/TextIconButton.dart';

class RegistScreen extends StatelessWidget {
  const RegistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.width;
    double space_between = height * 0.02;
    return Scaffold(
      body: Stack(
        children: [
          Background_shape(width: width, height: height),
          Center(
            child: Padding(
              padding: EdgeInsets.all(width * 0.16),
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 30),
                children: [
                  TextField_withIcon(
                    textbox: (value) {},
                    password: false,
                    height: height,
                    ico: MyFlutterApp.account,
                    label: "اسم الحساب",
                  ),
                  SizedBox(height: space_between),
                  TextField_withIcon(
                    textbox: (value) {},
                    password: false,
                    height: height,
                    ico: MyFlutterApp.account,
                    label: "اسم الحساب",
                  ),
                  SizedBox(height: space_between),
                  TextField_withIcon(
                    textbox: (value) {},
                    password: false,
                    height: height,
                    ico: MyFlutterApp.account,
                    label: "اسم الحساب",
                  ),
                  SizedBox(height: space_between),
                  TextField_withIcon(
                    textbox: (value) {},
                    password: false,
                    height: height,
                    ico: MyFlutterApp.account,
                    label: "اسم الحساب",
                  ),
                  SizedBox(height: space_between),
                  TextField_withIcon(
                    textbox: (value) {},
                    password: false,
                    height: height,
                    ico: MyFlutterApp.account,
                    label: "اسم الحساب",
                  ),
                  SizedBox(height: space_between),
                  TextField_withIcon(
                    textbox: (value) {},
                    password: true,
                    height: height,
                    ico: MyFlutterApp.password_01,
                    label: "كلمة المرور",
                  ),
                  SizedBox(height: space_between),
                  TextField_withIcon(
                    textbox: (value) {},
                    password: true,
                    height: height,
                    ico: MyFlutterApp.password_01,
                    label: "تأكيد كلمة المرور",
                  ),
                  SizedBox(height: space_between),
                  TextIconButton(
                      width: width,
                      label: 'التسجيل',
                      icon: false,
                      pressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MainPage()));
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
