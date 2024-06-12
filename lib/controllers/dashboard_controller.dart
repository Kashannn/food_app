import 'package:get/get.dart';

class DashboardController extends GetxController {
  var switchValue = true.obs;

  void toggleSwitch(bool value) {
    switchValue.value = value;
  }
}
