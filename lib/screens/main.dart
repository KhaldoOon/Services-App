import 'package:flutter/material.dart';
import 'package:yasser/Widgets/Background.dart';
import 'package:yasser/Widgets/MainRoute_AppBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yasser/Widgets/MainScreenList.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;

    return Scaffold(
      appBar: MainRoute_AppBar(width: width, title: "الرئيسية"),
      body: Stack(
        children: [
          Background_shape(width: width, height: height),
          Column(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: height * 0.008),
                children: [
                  CarouselSlider.builder(
                    itemCount: 3,
                    options: CarouselOptions(
                        disableCenter: true,
                        autoPlay: true,
                        viewportFraction: 1),
                    itemBuilder: (context, index, realIndex) {
                      return imageSlider(height, width);
                    },
                  ),
                ],
              ),
              MainScreenList(),
              // MainScreenList(),
              // Expanded(
              //   child: SizedBox(
              //     height: queryData.size.height * 0.65,
              //     child: ListView.builder(
              //         scrollDirection: Axis.vertical,
              //         // shrinkWrap: true,
              //         itemCount: widget.productCat.length == null
              //             ? 0
              //             : widget.productCat.length,
              //         itemBuilder: (context, index) {
              //           if (widget.productCat[index + 1].productList.length ==
              //               0) return SizedBox();
              //           return Container(
              //               height: 150,
              //               child: ProductList(
              //                   widget.productCat[index + 1].productList));
              //         }),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget imageSlider(height, width) {
  return Container(
    margin:
        EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20.0),
    ),
    padding: EdgeInsets.only(top: height * 0.008),
    child: Image(image: AssetImage('images/ad.jpg')),
  );
}
/*
Widget _indicator(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 300),
    height: 6,
    width: isActive ? 30 : 6,
    margin: EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
        color: Color(0xFF3F9F9E), borderRadius: BorderRadius.circular(5)),
  );
}

List<Widget> buildIndicator(int currentIndex) {
  List<Widget> indicators = [];
  for (int i = 0; i < 3; i++) {
    if (currentIndex == i) {
      indicators.add(_indicator(true));
    } else {
      indicators.add(_indicator(false));
    }
  }

  return indicators;
}
*/
