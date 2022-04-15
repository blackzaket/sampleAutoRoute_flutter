import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_auto_route/route/app_route.gr.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 3; i++)
          Container(
            child: GestureDetector(
                onTap: () {
                  AutoRouter.of(context).push(SinglePostRoute(userId: i));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('Post$i')),
                )),
          ),
      ],
    );
  }
}
