import 'package:chat_app2/constans/colors.dart';
import 'package:chat_app2/screens/body/widget/defualt_field.dart';

import '../widget/default_appbar.dart';
import 'package:flutter/material.dart';

class ContactBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: DefaultAppBar(
                text: 'Contacts',
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 2, right: 3, left: 3),
                        child: ListTile(
                          title: Text(
                            'Name Name',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: KsecoundColor),
                          ),
                          subtitle: Text(
                            'message',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: KsecoundColor),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              top: size.height*.1,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: DefaultField(
                  hint: 'Search',
                  sufix: IconButton(
                    icon: Icon(Icons.keyboard_voice,color: KsecoundColor,),
                    onPressed: (){},
                  ),
                  perfix: IconButton(
                    icon: Icon(Icons.search,color: KsecoundColor,),
                    onPressed: (){},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}