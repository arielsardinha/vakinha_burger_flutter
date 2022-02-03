import 'dart:developer';

import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/mixins/loader_mixin.dart';
import 'package:vakinha_burger_mobile/app/core/mixins/messages_mixin.dart';
import 'package:vakinha_burger_mobile/app/models/product_model.dart';
import 'package:vakinha_burger_mobile/app/repositories/products/product_repository.dart';

class MenuController extends GetxController with LoaderMixin, MessagesMixin {
  final ProductRepository _productRepository;

  final _loading = false.obs;
  final _message = Rxn<MessageModel>();
  final menu = <ProductModel>[].obs;

  MenuController({required ProductRepository productRepository})
      : _productRepository = productRepository;

  @override
  void onInit() {
    loaderListener(_loading);
    messageListener(_message);
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    try {
      _loading.toggle();
      await _findAllProducts().then((value) {
        menu.assignAll(value);
      });
      _loading.toggle();
    } catch (e, s) {
      _loading.toggle();
      log('Erro ao bscar produtos', error: e, stackTrace: s);
      _message(
        MessageModel(
            title: 'Erro',
            message: 'Erro ao buscar menu',
            type: MessageType.error),
      );
      _loading.toggle();
    }
    super.onReady();
  }

  Future<List<ProductModel>> _findAllProducts() async {
    return await _productRepository.findAll();
  }

  Future<void> refrashPage() async {
    try {
      await _findAllProducts().then((value) {
        menu.addAll(value);
      });
    } catch (e, s) {
      log('Erro ao bscar produtos', error: e, stackTrace: s);
      _message(
        MessageModel(
            title: 'Erro',
            message: 'Erro ao buscar menu',
            type: MessageType.error),
      );
    }
  }
}
