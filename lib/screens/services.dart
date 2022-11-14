import 'package:flutter/material.dart';
import 'package:yasser/Widgets/Background.dart';
import 'package:yasser/Widgets/ImageTextCard.dart';
import 'package:yasser/Widgets/MainRoute_AppBar.dart';
import 'package:yasser/utilities/Constant.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    return Scaffold(
      appBar: MainRoute_AppBar(width: width, title: "الخدمات"),
      body: Stack(
        children: [
          Background_shape(width: width, height: height),
          Directionality(
            textDirection: TextDirection.rtl,
            child: GridView(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.04),
              children: [
                ImageTextCard(
                  width: width,
                  label: "تكسي الضاحية",
                  imageUrl: "images/service/Taxi.png",
                  pressed: () {},
                ),
                ImageTextCard(
                  width: width,
                  label: "خدمات عقارية",
                  imageUrl: "images/service/real estate services.png",
                  pressed: () {},
                ),
                ImageTextCard(
                  width: width,
                  label: "خدمات إلكترونية",
                  imageUrl: "images/service/Tech service.png",
                  pressed: () {},
                ),
                ImageTextCard(
                  width: width,
                  label: "اخترنا لكم",
                  imageUrl: "images/service/cart.png",
                  pressed: () {},
                ),
                ImageTextCard(
                  width: width,
                  label: "دليل ضاحية الفردوس",
                  imageUrl: "images/service/Evidence.png",
                  pressed: () {},
                ),
                ImageTextCard(
                  width: width,
                  label: "اتصل بنا",
                  imageUrl: "images/service/contact us.png",
                  pressed: () {},
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: height * 0.21,
                  crossAxisCount: 2,
                  mainAxisSpacing: height * 0.05,
                  crossAxisSpacing: width * 0.05),
            ),
          ),
        ],
      ),
    );
  }
}
