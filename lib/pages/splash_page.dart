import 'dart:async';

import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override

  void initState () {
    Timer(Duration(seconds: 3), () => Navigator.popAndPushNamed(context, '/main'));

    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/icon_splash.png'))
          ),
        ),
      ),
    );
  }
}
