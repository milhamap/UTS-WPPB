import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/checkout_page.dart';
import 'package:ecommerce/pages/checkout_success_page.dart';
import 'package:ecommerce/pages/product_page.dart';
import 'package:ecommerce/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'pages/splash_page.dart';
import 'pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/main': (context) => MainPage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/checkout-success': (context) => CheckoutSuccessPage()
      },
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           "Hello Semuanya",
//           style: priceTextStyle.copyWith(
//             fontSize: 30
//           ),
//         ),
//       ),
//     );
//   }
// }