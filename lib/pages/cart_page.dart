import 'package:flutter/material.dart';

import '../widget/cart_appbar.dart';
import '../widget/cart_item_samples.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppbar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0XFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )
            ),
            child: Column(
              children: [
                CartItemSamples(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
