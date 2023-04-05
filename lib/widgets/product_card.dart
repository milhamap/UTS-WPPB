import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: 30
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgSepatu,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Image.asset(
              'assets/sepatu_1.png',
              width: 215,
              height: 150,
              fit: BoxFit.cover
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All Can',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Ventela Basic',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Rp. 190.000,00',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
