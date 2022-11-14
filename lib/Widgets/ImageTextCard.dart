import 'package:flutter/material.dart';
import 'package:yasser/utilities/Constant.dart';

class ImageTextCard extends StatelessWidget {
  const ImageTextCard({
    Key? key,
    required this.width,
    required this.label,
    required this.imageUrl,
    this.pressed,
  }) : super(key: key);

  final double width;
  final String label;
  final String imageUrl;
  final VoidCallback? pressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressed,
      child: Container(
        decoration: kImageTextCardDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageUrl, width: width * 0.25),
            const SizedBox(height: 10),
            Text(label, style: const TextStyle(color: Colors.black54))
          ],
        ),
      ),
    );
  }
}
