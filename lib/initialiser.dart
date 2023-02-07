import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:noucav/injector.dart';

import 'main.dart';

class Initialiser {
  GetIt sl = GetIt.instance;
  void init() {
    register();
    runApp(const MyApp());
  }

  Future register() async {
    for (final injector in injectors) {
      await injector.register();
    }
  }
}
