import 'package:flutter/material.dart';

import 'package:noucav/config.dart';
import 'package:noucav/initialiser.dart';
import 'package:noucav/routes.dart';

void main() {
  Initialiser().init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Noucav',
      routerConfig: routes,
      theme: Config.themeData,
    );
  }
}
