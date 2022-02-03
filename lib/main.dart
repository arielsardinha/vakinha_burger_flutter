import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vakinha_burger_mobile/app/core/bindings/aplication_binding.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/routes/auth_routes.dart';
import 'package:vakinha_burger_mobile/app/routes/home_routes.dart';
import 'package:vakinha_burger_mobile/app/routes/product_detail_routes.dart';
import 'package:vakinha_burger_mobile/app/routes/register_routes.dart';
import 'package:vakinha_burger_mobile/app/routes/splash_routers.dart';

Future<void> main(List<String> args) async {
  await GetStorage.init();
  runApp(const VakinhaBurgerMainApp());
}

class VakinhaBurgerMainApp extends StatelessWidget {
  const VakinhaBurgerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vakinha Burger',
      theme: VakinhaUi.theme,
      initialBinding: AplicationBinding(),
      getPages: [
        ...SplashRoutes.routes,
        ...AuthRoutes.routes,
        ...RegisterRoutes.routes,
        ...HomeRoutes.routes,
        ...ProductDetailRoutes.routes
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
