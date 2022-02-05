import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/order/shopping_card/shopping_card_controller.dart';

class ShoppingCardBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      ShoppingCardController(
        authService: Get.find(),
        shoppingCardService: Get.find(),
      ),
    );
  }
}
