import 'package:chat_app2/constans/colors.dart';
import '../auth/auth_screen/auth_screen.dart';
import 'package:chat_app2/widget/defult_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  bool isLoding = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Container(
              width: size.width,
              height: size.height * .6,
              child: Image.asset(
                'assets/images/splash1.png',
                width: size.width * .9,
                height: size.height * .5,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: size.height * .1,
          ),
          if (!isLoding)
            DefultButton(
              function: () {
                goToNext(context);
              },
              text: 'Get Start',
              key: ValueKey('startKey'),
            ),
          if (isLoding)
            CircularProgressIndicator(
              color: KsecoundColor,
            ),
        ],
      ),
    );
  }

  Future goToNext(BuildContext ctx) async {
    setState(() {
      isLoding = true;
    });
    Future next = Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          ctx,
          MaterialPageRoute(
            builder: (ctx) => AuthScreen(),
          ));
    }).then((value) {
      setState(() {
        isLoding = false;
      });
    });

    return next;
  }
}
