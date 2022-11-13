import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
class ItemCard extends StatelessWidget {
  final Product product;
  final Function()? press;
  const ItemCard({
    Key? key,
    required this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            // width: 160.0,
            // height: 180.0,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: product.color,
                borderRadius: BorderRadius.circular(16)),
            child: Image.asset(product.image),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLightColor,fontSize: 20.0),
            ),
          ),
          Text(
            "${product.price} ฿",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}