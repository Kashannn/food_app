import 'package:get/get.dart';

class ToggleController extends GetxController {
  var isDelivery = true.obs;

  void toggle() {
    isDelivery.value = !isDelivery.value;
  }
}

class BottomNavController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
    if (index == 3) {
      Get.toNamed('/Profile');
    }
    else if(index==0){
      Get.toNamed('/Dashboard');
    }
  }
}