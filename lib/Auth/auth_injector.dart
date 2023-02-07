import 'package:get_it/get_it.dart';
import 'package:noucav/Auth/presentation/view_models/login_screen_vm.dart';

import '../injector.dart';

class AuthInjector extends Injector {
  @override
  Future register() async {
    return GetIt.I.registerSingleton<LoginScreenVM>(LoginScreenVM());
  }
}
