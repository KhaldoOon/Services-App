import 'package:flutter/material.dart';
import 'package:yasser/utilities/my_flutter_app_icons.dart';

class Background_shape extends StatelessWidget {
  const Background_shape({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: width * 0.5,
            top: height + (height * 0.7),
            child: Background_circle(width: width)),
        Positioned(
            left: width * 0.7,
            top: height * 0.5,
            child: Background_circle(width: width, lowOpacity: true)),
        Positioned(
            right: width * 0.5,
            top: height + (height * 0.5),
            child: Background_circle(width: width, lowOpacity: true)),
        Positioned(
            right: width * 0.7,
            bottom: height + (height * 0.55),
            child: Background_circle(
                width: width, size: width * 0.5, lowOpacity: true)),
        Positioned(
            right: -width * 0.06,
            // left: 5,
            bottom: height + (height * 0.7),
            child: Background_circle(width: width, size: width * 1.1)),
        Positioned(
            right: width * 0.75,
            bottom: height + (height * 0.01),
            child: Background_circle(width: width)),
      ],
    );
  }
}

class Background_circle extends StatelessWidget {
  const Background_circle({
    Key? key,
    required this.width,
    this.size = 0,
    this.lowOpacity = false,
  }) : super(key: key);

  final double width;
  final double size;
  final bool lowOpacity;

  @override
  Widget build(BuildContext context) {
    return Icon(
      MyFlutterApp.background_circle,
      color: lowOpacity ? Color(0x077CD3D6) : Color(0x107CD3D6), //10  53
      size: size == 0 ? width * 0.77 : size,
    );
  }
}
