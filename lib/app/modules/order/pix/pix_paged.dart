import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_appar.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_helper.dart';
import 'package:vakinha_burger_mobile/app/models/order_pix.dart';
import 'package:vakinha_burger_mobile/app/modules/order/pix/pix_controller.dart';

class PixPage extends GetView<PixController> {
  PixPage({Key? key}) : super(key: key);

  final OrderPix _orderPix = Get.arguments;

  @override
  Widget build(BuildContext context) {
    var qrCode = Uri.parse(_orderPix.image).data;
    return Scaffold(
      appBar: VkAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Valor a pagar',
                  style: context.textTheme.headline4,
                ),
                Text(
                  FormatterHelper.formatCurrency(_orderPix.totalValue),
                  style: context.textTheme.headline4?.copyWith(
                    color: context.theme.primaryColorDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.memory(
                  qrCode!.contentAsBytes(),
                  width: context.widthTransformer(reducedBy: 50),
                  height: context.heightTransformer(reducedBy: 50),
                ),
                TextButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: _orderPix.code));
                    Get.rawSnackbar(
                      message: 'Código pix copiado',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  style: TextButton.styleFrom(primary: Colors.grey),
                  child: Text(
                    'PIX Copia e cola',
                    style: context.textTheme.headline4?.copyWith(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
