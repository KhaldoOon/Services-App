import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDRegist extends StatefulWidget {
  XDRegist({
    Key? key,
  }) : super(key: key);

  @override
  State<XDRegist> createState() => _XDRegistState();
}

class _XDRegistState extends State<XDRegist> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String url = "http://10.0.2.2:8000/api/user/register";
  bool isLoading = false;

  setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: const Color(0xff1a434e),
      body: Stack(
        children: <Widget>[
          //background stuff //down
          Container(
            //should move it down
            margin: EdgeInsets.fromLTRB(0, 350, 0, 0),
            child: SvgPicture.string(
              _svg_onyv5j,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.none,
            ),
          ),
          //top right background
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.string(
              _svg_ur4k,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          //////text fields
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 25.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextField(
                controller: nameController,
                style: text_field_input_style,
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "John doe",
                    labelStyle: text_field_style,
                    hintStyle: text_field_style,
                    icon: Icon(Icons.perm_identity, color: Colors.white)),
              ),
              TextField(
                controller: emailController,
                style: text_field_input_style,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "john.Doh@gmail.com",
                    labelStyle: text_field_style,
                    hintStyle: text_field_style,
                    icon: Icon(Icons.email, color: Colors.white)),
              ),
              TextField(
                obscureText: true,
                controller: passwordController,
                style: text_field_input_style,
                decoration: InputDecoration(
                    labelText: "password",
                    hintText: "*******",
                    labelStyle: text_field_style,
                    hintStyle: text_field_style,
                    icon: Icon(Icons.lock, color: Colors.white)),
              ),
              TextField(
                obscureText: true,
                controller: passwordConfirmationController,
                style: text_field_input_style,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "*******",
                    labelStyle: text_field_style,
                    hintStyle: text_field_style,
                    icon: Icon(Icons.lock, color: Colors.white)),
              ),
              TextField(
                controller: addressController,
                style: text_field_input_style,
                decoration: InputDecoration(
                    labelText: "Address (Optional)",
                    hintText: "Syria,Damascus",
                    labelStyle: text_field_style,
                    hintStyle: text_field_style,
                    icon: Icon(Icons.place, color: Colors.white)),
              ),
              TextField(
                controller: phoneController,
                style: text_field_input_style,
                decoration: InputDecoration(
                    labelText: "phone number (Optional)",
                    hintText: "099 9999 999",
                    labelStyle: text_field_style,
                    hintStyle: text_field_style,
                    icon: Icon(Icons.contact_phone, color: Colors.white)),
              ),
              SizedBox(height: queryData.size.height * 0.05),
              //Regest button
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19.0),
                    color: const Color(0xffefefef),
                  ),
                  width: queryData.size.width * 0.3,
                  height: queryData.size.height * 0.06,
                  alignment: Alignment.center,
                  child: Text(
                    isLoading ? "Regesting.." : "Register",
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 20,
                      color: const Color(0xff1a434e),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          //Back Arrow
          SafeArea(
            minimum: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}

const String _svg_onyv5j =
    '<svg viewBox="-62.9 247.1 486.1 478.1" ><defs><linearGradient id="gradient" x1="0.769421" y1="0.40274" x2="0.269232" y2="0.598685"><stop offset="0.0" stop-color="#7d1a434e" stop-opacity="0.49" /><stop offset="1.0" stop-color="#ff0b1d2d"  /><stop offset="1.0" stop-color="#ff0b1d2d"  /></linearGradient></defs><path transform="matrix(-0.241922, 0.970296, -0.970296, -0.241922, 696.17, 182.75)" d="M 223.1119689941406 225.6929931640625 C 223.1119689941406 225.6929931640625 326.2262573242188 227.2766723632812 315.4087829589844 346.0198669433594 C 304.5893859863281 464.7608337402344 280.4557495117188 520.2493896484375 346.2004089355469 553.541015625 C 411.9434204101562 586.835205078125 400.2934875488281 628.8778076171875 400.2934875488281 628.8778076171875 L 615.3417358398438 628.8662109375 L 615.3417358398438 225.6929931640625 L 223.1119689941406 225.6929931640625 Z" fill="url(#gradient)" fill-opacity="0.42" stroke="none" stroke-width="1" stroke-opacity="0.42" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ur4k =
    '<svg viewBox="181.9 -7.5 177.8 83.9" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#001a434e" stop-opacity="0.0" /><stop offset="1.0" stop-color="#ff0b1d2d"  /><stop offset="1.0" stop-color="#ff0b1d2d"  /></linearGradient></defs><path transform="matrix(1.0, 0.0, 0.0, 1.0, -351.63, -67.45)" d="M 711.2994384765625 60 L 711.2994384765625 124.1936798095703 C 707.9913330078125 125.1959762573242 704.6017456054688 125.9026718139648 701.1571655273438 126.2778244018555 C 696.8108520507812 126.7515029907227 692.3829345703125 126.6624450683594 688.0896606445312 125.8041610717773 C 680.2625732421875 124.2391510009766 673.3224487304688 119.4797058105469 665.2283935546875 119.0780410766602 C 657.7329711914062 118.7104721069336 651.927734375 123.4964370727539 646.1490478515625 127.619255065918 C 635.5236206054688 135.1960906982422 623.3331909179688 140.7323455810547 610.4608764648438 142.9225921630859 C 591.6333618164062 146.1246032714844 571.947509765625 141.7062072753906 557.305419921875 129.1766967773438 C 552.5819702148438 125.1410217285156 548.1541748046875 120.5445175170898 544.4349365234375 115.4648895263672 C 539.2018432617188 108.3522415161133 535.3555908203125 100.2941665649414 534.0311279296875 91.52938842773438 C 532.3677368164062 80.47392272949219 534.5958862304688 69.49046325683594 540.2211303710938 60 L 711.2994384765625 60 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
TextStyle text_field_style = TextStyle(color: Colors.white54);
TextStyle text_field_input_style = TextStyle(color: Colors.white);
