import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/home/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(shoppingCardService: Get.find()));
  }
}
