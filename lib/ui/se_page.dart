import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_auto_route/route/app_route.gr.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).push(ThirdMain());
        },
        child: Text('Se Page'),
      ),
    );
  }
}
