import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/sepatu_1.png'
                    )
                  )
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Patrobas Ivan',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold
                      ),
                    ),
                    Text(
                      'Rp. 240.000,00',
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/icon_add.png',
                    width: 16,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium
                    ),
                  ),
                  SizedBox(height: 2),
                  Image.asset(
                    'assets/icon_minus.png',
                    width: 16,
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Image.asset(
                'assets/icon_delete.png',
                width: 10,
              ),
              SizedBox(width: 4),
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: light
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
