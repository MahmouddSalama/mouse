import 'package:chat_app2/constans/colors.dart';
import 'package:flutter/material.dart';
class DefultButton extends StatelessWidget {
  final String text;
  final Function function;

  const DefultButton({Key? key,required this.text,required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ()=>function(),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          alignment: Alignment.center,
          width: size.width*.8,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: KsecoundColor
          ),
          child: Text(text,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}
