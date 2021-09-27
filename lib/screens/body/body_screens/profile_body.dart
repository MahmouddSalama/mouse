import 'package:chat_app2/constans/colors.dart';
import 'package:chat_app2/screens/auth/widget/my_text.dart';
import 'package:chat_app2/screens/body/widget/defualt_field.dart';
import 'package:chat_app2/screens/body/widget/profile_image.dart';
import 'package:chat_app2/widget/defult_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: size.height * .1),
              Text1(text: 'Edit Profile'),
              SizedBox(height: size.height * .1),
              Container(
                width: 300,
                height: 200,
                child: Stack(
                  children: [
                    ProfileImage(
                      size: 70,
                      photoPath: 'assets/images/urban-user-2.png',
                      alignment: Alignment(-1, -.3),
                    ),
                    ProfileImage(
                      size: 90,
                      photoPath: 'assets/images/urban-user-1.png',
                      alignment: Alignment(.9, 0),
                    ),
                    Align(
                      alignment: Alignment(1, 1),
                      child: FloatingActionButton(
                        elevation: 10,
                        onPressed: () {},
                        child: Icon(Icons.camera_alt),
                        backgroundColor: KsecoundColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: DefaultField(hint: 'Enter Name',),
              ),
              SizedBox(height: 30),
              DefultButton(
                text: 'Save',
                function: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
