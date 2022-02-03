import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/menu/menu_controller.dart';
import 'package:vakinha_burger_mobile/app/repositories/products/product_repository.dart';
import 'package:vakinha_burger_mobile/app/repositories/products/product_repository_impl.dart';

class MenuBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(
        () => ProductRepositoryImpl(restClient: Get.find()));
    Get.put(MenuController(productRepository: Get.find()));
  }
}
