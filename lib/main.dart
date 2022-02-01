import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/routes/auth_routes.dart';
import 'package:vakinha_burger_mobile/app/routes/register_page.dart';
import 'package:vakinha_burger_mobile/app/routes/routes.dart';

void main(List<String> args) {
  runApp(const VakinhaBurgerMainApp());
}

class VakinhaBurgerMainApp extends StatelessWidget {
  const VakinhaBurgerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vakinha Burger',
      theme: VakinhaUi.theme,
      getPages: [
        ...SplashRoutes.routes,
        ...AuthRoutes.routes,
        ...RegisterRoutes.routes
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
