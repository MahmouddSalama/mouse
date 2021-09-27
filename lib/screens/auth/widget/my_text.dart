import 'package:chat_app2/constans/colors.dart';
import 'package:flutter/material.dart';
class Text1 extends StatelessWidget {
  final String text;

  const Text1({Key? key,required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 25,
        color: KsecoundColor,
      ),
    );
  }
}
class Text2 extends StatelessWidget {
  final String text;

  const Text2({Key? key,required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Container(
      width: size.width * .9,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 17,
          color: KsecoundColor,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}