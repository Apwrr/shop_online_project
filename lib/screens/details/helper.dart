import 'package:flutter/material.dart';

Future<void> showMyDialog(BuildContext context, String title, String content) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              // todo:
              Navigator.of(context).pop(); // ปิด dialog
            },
          ),
        ],
      );
    },
  );
}
class Click extends StatefulWidget {
  const Click({Key? key}) : super(key: key);

  @override
  State<Click> createState() => _ClickState();
}

class _ClickState extends State<Click> {
  void handleClick() {
    showMyDialog(context, 'สำเร็จ', 'Pre-Order Successfully');
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
