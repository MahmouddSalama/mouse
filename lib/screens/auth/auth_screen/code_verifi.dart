import 'package:chat_app2/constans/colors.dart';
import '../../body/mainLayout/main_layout.dart';
import 'package:chat_app2/widget/defult_button.dart';
import '../widget/dropdown_button.dart';
import '../widget/my_text.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height * .4,
                  child: Image.asset(
                    'assets/images/splash2.png',
                    fit: BoxFit.fill,
                    color: KsecoundColor.withOpacity(.8),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.height * .1),
                    Text1(
                      text: "Code Verification",
                    ),
                    SizedBox(height: size.height * .06),
                    Text2(text: 'Enter a six digit code here'),
                    SizedBox(height: size.height * .1),
                    Container(
                      width: 195,
                      height: 55,
                      child: TextFormField(
                        maxLength: 6,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        ),
                        cursorColor: KsecoundColor,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            counterText: '',
                            hintText: '_ _ _ _ _ _',
                            hintStyle: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w300),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      child: Text2(text: 'send Code Again'),
                      onTap: () {},
                    ),
                    SizedBox(height: 30),
                    DefultButton(
                      text: 'Next',
                      function: () {
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => MainLayout(),
                            ));
                      },
                    ),
                    SizedBox(height: size.height * .1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


