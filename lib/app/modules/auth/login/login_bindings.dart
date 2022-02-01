import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/auth/login/login_controller.dart';
import 'package:vakinha_burger_mobile/app/modules/auth/register/register_controller.dart';
import 'package:vakinha_burger_mobile/app/repositories/auth/auth_repository.dart';
import 'package:vakinha_burger_mobile/app/repositories/auth/auth_repository_interface.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
        () => AuthRepositoryImpl(restClient: Get.find()));

    Get.lazyPut(() => LoginController(authRepository: Get.find()));
  }
}
