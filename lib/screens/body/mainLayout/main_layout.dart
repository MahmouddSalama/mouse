import 'package:chat_app2/constans/colors.dart';
import '../body_screens/messages/messages_body.dart';
import '../body_screens/contact_body.dart';
import '../body_screens/profile_body.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex=1;
 List _screens=[
   ProfileBody(),
   MessagesBody(),
   ContactBody(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
            _currentIndex=value;
          });
        },
        selectedItemColor: KsecoundColor,
        unselectedItemColor: Color(0xffC2C1C9),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: ''),
        ],
      ),
      body: _screens[_currentIndex],
    );
  }
}
