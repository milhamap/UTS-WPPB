import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/theme.dart';

class ProductPage extends StatefulWidget {

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/sepatu_1.png',
    'assets/sepatu_6.png',
    'assets/sepatu_9.png'
  ];

  List familiarShoes = [
    'assets/sepatu_1.png',
    'assets/sepatu_6.png',
    'assets/sepatu_9.png',
    'assets/sepatu_1.png',
    'assets/sepatu_6.png',
    'assets/sepatu_9.png',
    'assets/sepatu_1.png',
    'assets/sepatu_6.png',
    'assets/sepatu_9.png'
  ];

  int currentIndex = 0;
  bool isWhistlist = false;

  @override
  Widget build(BuildContext context) {

    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * 30),
          child: AlertDialog(
            backgroundColor: bgColor3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: primaryTextColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/icon_checklist.png",
                    width: 100,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Hurray :)",
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Item added successfully",
                    style: secondaryTextStyle
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 154,
                    height: 44,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                      child: Text(
                        "View My Cart",
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      );
    }

    Widget indikator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : Color(0xffC4C4C4)
        ),
      );
    }

    Widget familiarShoesCard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(
          right: 16
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl)
          ),
          borderRadius: BorderRadius.circular(6)
        ),
      );
    }

    Widget header() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left
                  ),
                )
              ],
            ),
          ),
          CarouselSlider(
            items: images
              .map(
                (image) => Image.asset(
                  image,
                  width: MediaQuery.of(context).size.width,
                  height: 310,
                  fit: BoxFit.cover,
                ),
            )
            .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              }
            )
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indikator(index);
            }).toList(),
          )
        ],
      );
    }

    Widget content() {

      int index = -1;

      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 12
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24)
          ),
          color: bgColor1
        ),
        child: Column(
          children: [
            //Note: header
            Container(
              margin: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ventela Basic",
                          style: primaryTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 18
                          ),
                        ),
                        Text(
                          "All Can",
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12
                          ),
                        )
                      ],
                    )
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWhistlist = !isWhistlist;
                      });
                      if (isWhistlist) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: secondaryColor,
                                content: Text(
                                  "Has been added to the whistlist",
                                  textAlign: TextAlign.center,
                                )
                            )
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: alertColor,
                                content: Text(
                                  "Has been removed from the whistlist",
                                  textAlign: TextAlign.center,
                                )
                            )
                        );
                      }
                    },
                    child: Image.asset(
                      isWhistlist ? "assets/icon_whistlist_biru.png" : "assets/icon_favorite.png",
                      width: 46,
                    ),
                  )
                ],
              ),
            ),

          //  Node : Price
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: 30,
                right: 30
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price starts from",
                    style: primaryTextStyle,
                  ),
                  Text(
                    "Rp. 190.000,00",
                    style: priceTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold
                    ),
                  )
                ],
              ),
            ),

          //  Note: Description
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: primaryTextStyle.copyWith(
                        fontWeight: medium
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Upper 12 oz canvas, Thread nylon, Tnsole eva foam, Outsole rubber.",
                    style: subtitleTextStyle.copyWith(
                      fontWeight: light
                    ),
                    textAlign: TextAlign.justify,
                  )
                ]
              ),
            ),

          //  Node : Familiar shoes
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 30
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30
                    ),
                    child: Text(
                      "Familiar Shoes",
                      style: primaryTextStyle.copyWith(
                        fontWeight: medium
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoes
                        .map(
                          (image){
                            index++;
                            return Container(margin: EdgeInsets.only(
                                left: index == 0 ? 30 : 0),
                              child: familiarShoesCard(image),
                            );
                          }
                        )
                        .toList(),
                    ),
                  ),
                ],
              ),
            ),

          //  Node: Buttons
            Container(
              height: 54,
              width: double.infinity,
              margin: EdgeInsets.all(30),
              child: TextButton(
                onPressed: () {
                  showSuccessDialog();
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: primaryColor
                ),
                child: Text(
                  "Add to Cart",
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor6,
      body: ListView(
        children: [
          header(),
          content()
        ],
      )
    );
  }
}
