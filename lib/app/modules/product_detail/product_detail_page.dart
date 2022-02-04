import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/plus_minus_box.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_helper.dart';
import 'package:vakinha_burger_mobile/app/modules/product_detail/product_detail_controller.dart';

class ProductDetailPage extends GetView<ProductDetailController> {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VkAppBar(),
      body: LayoutBuilder(
        builder: (ctx, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: context.width,
                    height: context.heightTransformer(reducedBy: 60),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'http://dartweek.academiadoflutter.com.br/images${controller.product.image}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      controller.product.name,
                      style: context.textTheme.headline4?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      controller.product.description,
                      style:
                          context.textTheme.headline2?.copyWith(fontSize: 20),
                    ),
                  ),
                  Obx(
                    () => PlusMinusBox(
                      minusCallBack: controller.removeProduct,
                      plusCallBack: controller.addProduct,
                      quantity: controller.quantity,
                      price: controller.product.price,
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'total',
                      style: VakinhaUi.textBold,
                    ),
                    trailing: Obx(
                      () => Text(
                        FormatterHelper.formatCurrency(controller.totalPrice),
                        style: VakinhaUi.textBold,
                      ),
                    ),
                  ),
                  Center(
                    child: VkButton(
                      onPressed: controller.addProductInShoppingCard,
                      label: controller.quantity > 0
                          ? controller.alreadyAdded
                              ? 'Atualizar'
                              : 'Adicionar'
                          : 'Adicionar',
                      width: context.widthTransformer(reducedBy: 10),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
