import 'package:flutter/widgets.dart';

abstract class ViewModel extends ChangeNotifier {
  late BuildContext context;

  bool mounted = true;

  @override
  void dispose();

  void onInit() {}

  void onResume() {}

  void onPause() {}

  void onInactive() {}
}
