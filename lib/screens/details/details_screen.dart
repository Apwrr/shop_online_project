import 'package:flutter/material.dart';
import 'package:shop_online_project/models/Product.dart';
import 'package:shop_online_project/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {

  final Product product;

  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading:  IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Body2(product: product),
    );
  }
}
