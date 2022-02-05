import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vakinha_burger_mobile/app/core/constants/constants.dart';

class AuthService extends GetxService {
  final _isLogged = RxnBool();
  final _getStorage = GetStorage();
  Future<AuthService> init() async {
    _getStorage.listenKey(
      Constants.USER_KEY,
      (value) {
        _isLogged(value != null);
      },
    );
    ever<bool?>(_isLogged, (isLogged) {
      if (isLogged == null || !isLogged) {
        Get.offNamed('/auth/login');
        log('Deslogou !!!!!!');
      } else {
        Get.offNamed('/home');
        log('Logou !!!!!!');
      }
    });

    _isLogged(getUserId() != null);
    return this;
  }

  void logout() => _getStorage.write(Constants.USER_KEY, null);
  int? getUserId() => _getStorage.read(Constants.USER_KEY);
}
