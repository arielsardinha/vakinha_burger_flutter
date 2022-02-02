import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/services/auth_service.dart';
import 'package:vakinha_burger_mobile/app/modules/menu/menu_page.dart';

class HomeController extends GetxController {
  static const NAVIGATOR_KEY = 1;
  final _tabIndex = 0.obs;
  final _tabs = ['/menu', '/order/shopping_card', '/exit'];

  int get tabIndex => _tabIndex.value;
  set tabIndex(int index) {
    _tabIndex(index);
    if (_tabs[index] == '/exit') {
      Get.find<AuthService>().logout();
    } else {
      Get.toNamed(_tabs[index], id: NAVIGATOR_KEY);
    }
  }

  Route? onGeneratedRouter(RouteSettings settings) {
    if (settings.name == '/menu') {
      return GetPageRoute(
        settings: settings,
        page: () => const MenuPage(),
        transition: Transition.fadeIn,
      );
    }

    if (settings.name == '/order/shopping_card') {}
  }
}
