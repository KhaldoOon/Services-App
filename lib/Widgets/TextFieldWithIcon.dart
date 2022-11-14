import 'package:flutter/material.dart';

class TextField_withIcon extends StatelessWidget {
  TextField_withIcon({
    Key? key,
    required this.height,
    required this.ico,
    required this.label,
    required this.password,
    this.textbox,
  }) : super(key: key);

  final double height;
  final IconData ico;
  final String label;
  final bool password;
  final ValueChanged<String?>? textbox;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(ico, size: 25),
            labelText: label,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: EdgeInsets.symmetric(vertical: height * 0.01)),
        onChanged: (value) {},
        obscureText: password,
      ),
    );
  }
}
