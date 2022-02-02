import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/modules/menu/menu_controller.dart';
import 'package:vakinha_burger_mobile/app/modules/menu/widget/product_tile.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (ctx, i) {
        // final prod = controller.menu[i];
        return const ProductTile(
          title: 'prod.name',
          subtitle: 'prod.description',
          image: 'prod.image',
        );
      },
    );
  }
}
