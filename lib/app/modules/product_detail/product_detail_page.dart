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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://github.com/arielsardinha.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'X-TUDÃO',
                      style: context.textTheme.headline4?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      'descição',
                      style:
                          context.textTheme.headline2?.copyWith(fontSize: 20),
                    ),
                  ),
                  PlusMinusBox(
                    minusCallBack: () {},
                    plusCallBack: () {},
                    quantity: 1,
                    price: 6,
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text(
                      'total',
                      style: VakinhaUi.textBold,
                    ),
                    trailing: Text(
                      FormatterHelper.formatCurrency(200),
                      style: VakinhaUi.textBold,
                    ),
                  ),
                  Center(
                    child: VkButton(
                      onPressed: () {},
                      label: 'Adicionar',
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