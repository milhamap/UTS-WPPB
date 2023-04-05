import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class WhistlistCard extends StatelessWidget {
  const WhistlistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20
      ),
      padding: EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor4
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/sepatu_1.png',
              width: 60,
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
          Image.asset(
            'assets/icon_whistlist_biru.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
