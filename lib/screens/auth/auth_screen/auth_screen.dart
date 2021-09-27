import '/constans/colors.dart';
import '/widget/defult_button.dart';
import '../widget/dropdown_button.dart';
import '../widget/my_text.dart';
import 'package:flutter/material.dart';
import 'code_verifi.dart';

class  AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * .1),
                 Text1(text: "Number Verification",),
                  SizedBox(height: size.height * .06),
                  Text2(text: "ChatApp will Send an SMS message to verify your phone number Enter your phone number",),
                  SizedBox(height: size.height * .1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefultDropDownButton(),
                      SizedBox(width: 8),
                      Container(
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Enter Phone Number',
                              hintStyle: TextStyle(
                                color: KsecoundColor,
                                fontSize: 18,
                              ),
                              border: InputBorder.none),
                        ),
                        width: size.width * .6,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: KinputdColor,
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  DefultButton(
                    text: 'Next',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => VerificationScreen(),
                          ));
                    },
                  ),
                  SizedBox(height: size.height * .2),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}