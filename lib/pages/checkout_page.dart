import 'package:ecommerce/widgets/checkout_card.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30
        ),
        children: [
        //  Note: List item
          Container(
            margin: EdgeInsets.only(
              top: 30
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                CheckoutCard(),
                CheckoutCard()
              ],
            ),
          ),

        //  Note: Address Details
            Container(
              margin: EdgeInsets.only(
                top: 30
              ),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: bgColor4,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address Details',
                    style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icon_lokasi_info.png',
                            width: 40
                          ),
                          Image.asset(
                              'assets/icon_line.png',
                              height: 30,
                          ),
                          Image.asset(
                              'assets/icon_location.png',
                              width: 40
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Store Location',
                              style: secondaryTextStyle.copyWith(
                                fontWeight: light,
                                fontSize: 12
                              ),
                            ),
                            Text(
                              'Patrobas Ivan',
                              style: primaryTextStyle.copyWith(
                                  fontWeight: medium
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              'Your Addess',
                              style: secondaryTextStyle.copyWith(
                                  fontWeight: light,
                                  fontSize: 12
                              ),
                            ),
                            Text(
                              'Jl. Kejawab Putih Tambak, Perumahan Bumi Madina Asri',
                              style: primaryTextStyle.copyWith(
                                  fontWeight: medium
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

        //  Note: Payment Summary
          Container(
            margin: EdgeInsets.only(
                top: 30
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: bgColor4,
                borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Quantity',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12
                      ),
                    ),
                    Text(
                      '2 Items',
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product price',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12
                      ),
                    ),
                    Text(
                      'Rp. 240.000,00',
                      style: primaryTextStyle.copyWith(
                          fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12
                      ),
                    ),
                    Text(
                      'Free',
                      style: primaryTextStyle.copyWith(
                          fontWeight: medium
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                Divider(
                  thickness: 1,
                  color: Color(0xff2E3141),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: priceTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
                    ),
                    Text(
                      'Rp. 480.000,00',
                      style: priceTextStyle.copyWith(
                          fontWeight: semiBold
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

        //  Note: Checkout Button
          SizedBox(height: 30),
          Divider(
            thickness: 1,
            color: Color(0xff2E3141),
          ),
          Container(
            height: 50,
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              vertical: 30
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/checkout-success', (route) => false);
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              child: Text(
                'Checkout Now',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold
                ),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: AppBar(
        backgroundColor: bgColor1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details'
        ),
      ),
      body: content(),
    );
  }
}
