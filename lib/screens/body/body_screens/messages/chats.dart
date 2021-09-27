import 'package:chat_app2/constans/colors.dart';
import 'package:chat_app2/screens/body/widget/defualt_field.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          title: Text('user name'),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/urban-user-1.png'),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Center(child: Text('gfhbrf')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: DefaultField(hint: 'Type your message',elevation: 0,),
                  ),
                  FloatingActionButton(
                    backgroundColor: KsecoundColor,
                    onPressed: () {},
                    child: Icon(Icons.send),
                    mini: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
