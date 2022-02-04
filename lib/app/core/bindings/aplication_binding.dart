import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/rest_client/rest_client.dart';
import 'package:vakinha_burger_mobile/app/core/services/shopping_card_service.dart';

class AplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RestClient(),
      fenix: true,
    );
    Get.lazyPut(() => ShoppingCardService());
  }
}
