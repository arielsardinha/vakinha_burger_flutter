import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/services/auth_service.dart';
import 'package:vakinha_burger_mobile/app/core/services/shopping_card_service.dart';
import 'package:vakinha_burger_mobile/app/models/shopping_card_model.dart';

class ShoppingCardController extends GetxController {
  final AuthService _authService;
  final ShoppingCardService _shoppingCardService;
  final _address = ''.obs;
  final _cpf = ''.obs;
  ShoppingCardController(
      {required AuthService authService,
      required ShoppingCardService shoppingCardService})
      : _shoppingCardService = shoppingCardService,
        _authService = authService;

  set setAddress(String address) => _address.value = address;
  set setCpf(String cpf) => _cpf.value = cpf;
  double get totalValue => _shoppingCardService.totalValue;
  List<ShoppingCardModel> get products => _shoppingCardService.products;

  void addQuantityInProduct(ShoppingCardModel shoppingCardModel) {
    _shoppingCardService.addAndRemoveProductInShoppingCard(
        shoppingCardModel.product,
        quantity: shoppingCardModel.quantity + 1);
  }

  void subtractQuantityInProduct(ShoppingCardModel shoppingCardModel) {
    _shoppingCardService.addAndRemoveProductInShoppingCard(
        shoppingCardModel.product,
        quantity: shoppingCardModel.quantity - 1);
  }

  void clear() => _shoppingCardService.clear();
}
