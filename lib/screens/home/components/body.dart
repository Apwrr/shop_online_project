import 'package:flutter/material.dart';
import 'package:shop_online_project/constants.dart';
import 'package:shop_online_project/models/Product.dart';
import '../../details/details_screen.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Men",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: kDefaultPaddin,
                mainAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.95,
              ),
              itemBuilder: (context, index) => OutlinedButton(
                onPressed: () {  },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                child: ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: products[index]))),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
