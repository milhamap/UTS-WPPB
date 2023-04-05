import 'package:ecommerce/theme.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:ecommerce/widgets/product_file.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          // left: 30,
          // bottom: 15,
          // right: 30
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 12
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white,
                      width: 1
                    ),
                  )
                ),
                child: Text(
                  'All Shoes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 12
                ),
                margin: EdgeInsets.only(right: 16),
                child: Text(
                  'Running',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 12
                ),
                margin: EdgeInsets.only(right: 16),
                child: Text(
                  'Training',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 12
                ),
                margin: EdgeInsets.only(right: 16),
                child: Text(
                  'Basketball',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 12
                ),
                margin: EdgeInsets.only(right: 16),
                child: Text(
                  'Basketball',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 12
                ),
                margin: EdgeInsets.only(right: 16),
                child: Text(
                  'Running',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 12
                ),
                margin: EdgeInsets.only(right: 16),
                child: Text(
                  'Running',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30
        ),
        child: Text(
          'Popular Products',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 30),
              Row(children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30
        ),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semiBold
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(
          top: 14
        ),
        child: Column(
          children: [
            ProductFile(),
            ProductFile(),
            ProductFile(),
            ProductFile()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Check it',
            style: TextStyle(
              fontSize: 34,
            ),
            textAlign: TextAlign.end,
          ),
          centerTitle: true,
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(
                    MediaQuery.of(context).size.width, 100.0)
            ),
          ),
          ),
        ),
      body: ListView(
        children: [
          categories(),
          popularProductsTitle(),
          popularProducts(),
          newArrivalsTitle(),
          newArrivals()
        ],
      ),
    );
  }
}
