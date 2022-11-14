import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yasser/Widgets/TextFieldWithIcon.dart';
import 'package:yasser/Widgets/TextIconButton.dart';
import 'package:yasser/screens/regist&sign_in//regist.dart';
import 'package:yasser/screens/route.dart';
import 'package:yasser/utilities/my_flutter_app_icons.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double height = queryData.size.height;
    double width = queryData.size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: <Color>[Color(0xff93E4E4), Colors.white],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(width * 0.16),
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 30),
                children: [
                  Image.asset("images/logo.png"),
                  SizedBox(height: height * 0.02),
                  Text(
                    "تسجيل الدخول",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 40),
                  ),
                  TextField_withIcon(
                    textbox: (value) {},
                    password: false,
                    height: height,
                    ico: MyFlutterApp.account,
                    label: "اسم الحساب",
                  ),
                  SizedBox(height: height * 0.02),
                  TextField_withIcon(
                    textbox: (value) {},
                    password: true,
                    height: height,
                    ico: MyFlutterApp.password_01,
                    label: "كلمة المرور",
                  ),
                  SizedBox(height: height * 0.02),
                  TextIconButton(
                      width: width,
                      label: 'تسجيل الدخول',
                      icon: true,
                      pressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MainPage()));
                      }),
                  SizedBox(height: height * 0.02),
                  TextIconButton(
                    width: width,
                    label: 'تسجيل حساب جديد',
                    icon: false,
                    pressed: () {
                      print("pressed");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistScreen()));
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
