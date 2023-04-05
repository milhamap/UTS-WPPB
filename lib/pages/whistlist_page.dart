import 'package:ecommerce/theme.dart';
import 'package:ecommerce/widgets/whistlist_card.dart';
import 'package:flutter/material.dart';

class WhistlistPage extends StatelessWidget {
  const WhistlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
          'Favorite Shoes'
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWhistlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_whistlist.png',
                width: 74,
              ),
              SizedBox(height: 23),
              Text(
                'You don\'t have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Let\'s find your favorite shoes',
                style: secondaryTextStyle
              ),
              SizedBox(height: 20),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),
                  )
                ),
              )
            ],
          ),
        )
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: bgColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 30
            ),
            children: [
              WhistlistCard(),
              WhistlistCard(),
              WhistlistCard()
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptyWhistlist(),
        content()
      ],
    );
  }
}
