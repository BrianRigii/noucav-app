import 'package:get_it/get_it.dart';

import 'Auth/auth_injector.dart';

abstract class Injector {
  Future<void> register() async {}
}

List<Injector> injectors = [
  AuthInjector(),
];
