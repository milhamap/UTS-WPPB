import 'package:ecommerce/theme.dart';
import 'package:ecommerce/widgets/cart_card.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/whislist_kosong.png',
              width: 80,
            ),
            SizedBox(height: 20),
            Text(
              'Oops! Your Card is Empty',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle,
            ),
            Container(
              width: 154,
              height: 44,
              margin: EdgeInsets.only(
                top: 20
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context, '/main', (route) => false);
                },
                style: TextButton.styleFrom(
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
                ),
              ),
            )
          ],
        )
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30
        ),
        children: [
          CartCard()
        ],
      );
    }

    Widget customButtonNav() {
      return Container(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: primaryTextStyle,
                  ),
                  Text(
                    'Rp. 240.000,00',
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Divider(
              thickness: 0.3,
              color: subtitleColor,
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(
                horizontal: 30
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        backgroundColor: bgColor1,
        centerTitle: true,
        title: Text(
            'Your Cart'
        ),
        elevation: 0,
      ),
      body: content(),
      bottomNavigationBar: customButtonNav(),
    );
  }
}
