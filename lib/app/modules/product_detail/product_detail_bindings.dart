import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/product_detail/product_detail_controller.dart';

class ProductDetailBings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProductDetailController());
  }
}
