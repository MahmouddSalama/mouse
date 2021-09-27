import 'package:chat_app2/constans/colors.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget {
  final String text;

  const DefaultAppBar({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 130.0,
      width: size.width,
      decoration: new BoxDecoration(
        color: KsecoundColor,
        boxShadow: [new BoxShadow(blurRadius: 0.0)],
        borderRadius: new BorderRadius.vertical(
          bottom:
              new Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
        ),
      ),
      alignment: Alignment(-.9, -.3),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
