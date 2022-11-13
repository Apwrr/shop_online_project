import 'package:flutter/material.dart';
import 'package:shop_online_project/constants.dart';
import 'package:shop_online_project/models/Product.dart';
import 'package:shop_online_project/screens/details/helper.dart';


class Body2 extends StatelessWidget {
  final Product product;

  const Body2({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void handleClick() {
      showMyDialog(context, 'สำเร็จ', 'Pre-Order Successfully');
    }
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  /*color: Colors.grey,*/
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Expanded(
                    child: Image.asset(product.image, fit: BoxFit.contain),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.5),
                  padding: EdgeInsets.only(
                      top: size.height * 0.10,
                      right: kDefaultPaddin,
                      left: kDefaultPaddin),
                  //height: 500.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Color",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Row(
                                  children: <Widget>[
                                    ColorDot(
                                        color: Color(0xFFa21026),
                                        isSelected: true),
                                    ColorDot(color: Color(0xff104aa2)),
                                    ColorDot(color: Color(0xff000000)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: kTextColor),
                                children: [
                                  TextSpan(
                                      text: "Size\n",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: "${product.size} us",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          Text(product.description),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      CartCounter(),
                      SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 50.0,
                            child: Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: Colors.black,minimumSize: Size(400, 50)),
                                onPressed: handleClick,
                                child: Text("Pre - Order Now".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      product.title,
                      style: TextStyle(
                          color: Colors.cyan.shade700,
                          fontSize: 25.0,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "   Price\n",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    shadows: [
                                      Shadow(
                                        blurRadius: 5.0,
                                        color: Colors.white,
                                        offset: Offset(2.0, 2.0),
                                      ),
                                    ],
                                  )),
                              TextSpan(
                                text: "   ${product.price} ฿",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 10.0,
                                      color: Colors.black,
                                      offset: Offset(10.0, 10.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final isSelected;

  const ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(
          icon: Icons.remove,
          press: () {
            if(numOfItem>1){
              setState(() {
                numOfItem--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(numOfItem.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline5),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItem++;
              });
            }),
      ],
    );
  }


  SizedBox buildOutlinedButton({IconData? icon, Function()? press}) {
    return SizedBox(
      width: 52.0,
      height: 32.0,
      child: OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ))),
        onPressed: press,
        child: Icon(icon, color: Colors.black),
      ),
    );
  }
}
