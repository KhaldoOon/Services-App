import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yasser/screens/regist&sign_in//sign-in.dart';
import 'package:yasser/utilities/Constant.dart';

class AppIntro extends StatefulWidget {
  @override
  _AppIntroState createState() => _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    double width = queryData.size.width;
    double height = queryData.size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
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
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              PageView(
                onPageChanged: (int page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                controller: _pageController,
                children: <Widget>[
                  makePage(
                      image: 'images/intro/step-one.png',
                      title: Strings.stepOneTitle,
                      content: Strings.stepOneContent,
                      width: width,
                      height: height),
                  makePage(
                      image: 'images/intro/step-two.png',
                      title: Strings.stepTwoTitle,
                      content: Strings.stepTwoContent,
                      width: width,
                      height: height),
                  makePage(
                      image: 'images/intro/step-three.png',
                      title: Strings.stepThreeTitle,
                      content: Strings.stepThreeContent,
                      width: width,
                      height: height),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height * 0.04),
                    child: TextButton(
                      child: Text(
                        currentIndex != 2 ? 'تخطي' : '',
                        style: kBlackColorText,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: height * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildIndicator(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: height * 0.04),
                    child: TextButton(
                      child: Text(
                        'التالي',
                        style: kBlackColorText,
                      ),
                      onPressed: () {
                        setState(() {
                          if (currentIndex < 2) {
                            currentIndex++;
                            _pageController.animateToPage(
                              currentIndex,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                        });
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makePage({image, title, content, width, height}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image),
          Padding(
            padding: EdgeInsets.only(top: height * 0.1),
            child: Text(
              title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.03),
            height: height * 0.015,
            width: width * 0.15,
            decoration: BoxDecoration(
                color: Color(0xFF3F9F9E),
                borderRadius: BorderRadius.circular(5)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.12),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }

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

  List<Widget> _buildIndicator() {
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
}
