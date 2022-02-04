import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/services/shopping_card_service.dart';
import 'package:vakinha_burger_mobile/app/models/product_model.dart';

class ProductDetailController extends GetxController {
  final _product = Rx<ProductModel>(Get.arguments);
  final _totalPrice = 0.0.obs;
  final _quantity = 1.obs;
  final ShoppingCardService _shoppingCardService;

  ProductDetailController({required ShoppingCardService shoppingCardService})
      : _shoppingCardService = shoppingCardService;

  ProductModel get product => _product.value;
  double get totalPrice => _totalPrice.value;
  int get quantity => _quantity.value;

  @override
  void onInit() {
    _totalPrice(product.price);
    ever<int>(_quantity, (quantity) {
      _totalPrice(product.price * quantity);
    });
    super.onInit();
  }

  void addProduct() {
    quantity >= 0 ? _quantity.value += 1 : null;
  }

  void removeProduct() {
    quantity > 1 ? _quantity.value -= 1 : null;
  }

  void addProductInShoppingCard() {
    _shoppingCardService.addAndRemoveProductInShoppingCard(product,
        quantity: quantity);
    Get.back();
  }
}
