import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_auto_route/model/main_model.dart';

import '../route/app_route.gr.dart';

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<MainViewModel>(context);

    // return Container(
    //   child: GestureDetector(
    //     onTap: () {
    //
    //       viewModel.doSomething();
    //
    //       Future.delayed(Duration(seconds: 2), (){
    //         context.router.push(Second());
    //       });
    //
    //     },
    //       child: Text(viewModel.something)),
    // );
    return AutoTabsScaffold(
      routes: const [
        MainList(),
        MainSetting(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Books',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Account',
            ),
          ],
        );
      },
    );
  }



}
