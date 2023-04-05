import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class ProductFile extends StatelessWidget {
  const ProductFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
          bottom: 30
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/sepatu_1.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
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
                    'Patrobas Ivan',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Rp. 240.000,00',
                    style: priceTextStyle.copyWith(
                      fontWeight: medium
                    ),
                  )
                ],
            ))
          ],
        ),
      ),
    );
  }
}
