import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
      );
    }

    return Column(
      children: [
        header()
      ],
    );
  }
}
