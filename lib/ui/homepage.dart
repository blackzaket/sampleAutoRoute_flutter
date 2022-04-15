import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../route/app_route.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AutoTabsScaffold(
      routes: const [
        PostsRouter(),
        UsersRouter(),
        SettingsRouter(),
      ],

      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: Text('FlutterBottom ${tabsRouter.activeIndex}'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),

      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Posts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Users',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Setting',
            ),
          ],
        );
      },

    );
  }
}
