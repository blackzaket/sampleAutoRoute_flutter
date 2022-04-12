import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_auto_route/route/app_route.gr.dart';

import 'model/main_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => MainViewModel()),
    ],
    child: App(),
  ));
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
