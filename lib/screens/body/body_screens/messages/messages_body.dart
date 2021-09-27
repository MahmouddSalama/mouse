import 'package:chat_app2/constans/colors.dart';
import 'package:chat_app2/screens/body/body_screens/messages/chats.dart';
import '../../widget/default_appbar.dart';
import 'package:flutter/material.dart';

class MessagesBody extends StatelessWidget {
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
                text: 'Messages',
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 65,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(top: 8, right: 8, left: 8),
                        child: Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=>Chats(),
                                ),
                              );
                            },
                            title: Text(
                              'Name Name',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: KsecoundColor),
                            ),
                            subtitle: Row(
                              children: [
                                Icon(
                                  Icons.check_outlined,
                                  color: KsecoundColor,
                                  size: 20,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'message',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: KsecoundColor),
                                ),
                              ],
                            ),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60'),
                            ),
                            trailing: CircleAvatar(
                              radius: 10,
                              backgroundColor: KsecoundColor,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          color: Colors.white,
                          elevation: 10,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
