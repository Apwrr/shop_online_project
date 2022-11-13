import 'package:flutter/material.dart';
import 'package:shop_online_project/screens/home/components/body.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('C a r n i v a l',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
        leading:
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Body1(),
    );
  }
}