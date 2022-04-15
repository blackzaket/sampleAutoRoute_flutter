import 'package:flutter/material.dart';

class SinglePostPage extends StatelessWidget {
  var userId;

  SinglePostPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Center(
          child: Text(
        'my id $userId',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,

        ),
      )),
    );
  }
}
