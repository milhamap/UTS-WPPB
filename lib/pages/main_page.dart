import 'package:ecommerce/main.dart';
import 'package:ecommerce/pages/chat_page.dart';
import 'package:ecommerce/pages/profile_page.dart';
import 'package:ecommerce/pages/whistlist_page.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/nav_belanja.png',
          width: 20,
        ),
      );
    }

    Widget customButtonNav () {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20)
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bgColor4,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/nav_home.png',
                  width: 21,
                  color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                ),
                label: ''
              ),
              // BottomNavigationBarItem(
              //   icon: Image.asset(
              //     'assets/nav_chat.png',
              //     width: 20,
              //     color: currentIndex == 1 ? primaryColor : Color(0xff808191),
              //   ),
              //   label: '',
              // ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/Icon_whistlist.png',
                    width: 21,
                    color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                  ),
                  label: ''
              ),
              // BottomNavigationBarItem(
              //   icon: Image.asset(
              //     'assets/Profile.png',
              //     width: 20,
              //     color: currentIndex == 3 ? primaryColor : Color(0xff808191),
              //   ),
              //   label: '',
              // )
            ]
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        // case 1:
        //   return ChatPage();
        case 1:
          return WhistlistPage();
        // case 3:
        //   return ProfilePage();
        default:
          return MainPage();
      }
    }

    return Scaffold(
      backgroundColor: bgColor1,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
