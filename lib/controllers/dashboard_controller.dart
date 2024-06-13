import 'package:get/get.dart';

class ToggleController extends GetxController {
  var isDelivery = true.obs;

  void toggle() {
    isDelivery.value = !isDelivery.value;
  }
}
