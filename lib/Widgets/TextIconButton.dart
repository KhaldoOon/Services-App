import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    Key? key,
    required this.width,
    required this.label,
    required this.icon,
    this.pressed,
  }) : super(key: key);

  final double width;
  final String label;
  final bool icon;
  final VoidCallback? pressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF1B92A9))),
        onPressed: pressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: TextStyle(color: Colors.white)),
            SizedBox(width: width * 0.02),
            SvgPicture.string(icon ? sign_in_icon : ""),
          ],
        ));
  }
}

const String sign_in_icon =
    '<svg xmlns="http://www.w3.org/2000/svg" width="14.404" height="12.734" viewBox="0 0 14.404 12.734"><g id="Group_151" data-name="Group 151" transform="translate(160.692 -55.553)"><path id="Path_3274" data-name="Path 3274" d="M-160.692,68.287V55.553H-149.1v3.488h-1.245V57.116h-9.039v9.6h9.01V64.777h1.269v3.51Z" transform="translate(0)" fill="#fbfbfb"/><path id="Path_3275" data-name="Path 3275" d="M-113,99.177l3.2-2.779v1.78h7.048v1.837h-7.015v1.962Z" transform="translate(-43.54 -37.288)" fill="#fbfbfb"/></g></svg>';
