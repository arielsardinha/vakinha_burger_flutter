import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/auth/login/login_page.dart';

class AuthRoutes {
  AuthRoutes._();

  static final routes = <GetPage>[
    GetPage(
      name: '/auth/login',
      page: () => const LoginPage(),
    )
  ];
}
