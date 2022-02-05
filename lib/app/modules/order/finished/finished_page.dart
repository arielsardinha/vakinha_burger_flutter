import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_button.dart';
import 'package:vakinha_burger_mobile/app/modules/order/finished/finished_controller.dart';

class FinishedPage extends GetView<FinishedController> {
  const FinishedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  Image.asset('assets/images/logo_rounded.png'),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Pedido realizado com sucesso, clique no botão abaixo para acesso ao QRCode do pix',
                      textAlign: TextAlign.center,
                      style: context.textTheme.headline6?.copyWith(
                        color: context.theme.primaryColorDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  VkButton(
                    onPressed: () {},
                    label: 'PIX',
                    color: context.theme.primaryColorDark,
                    width: context.widthTransformer(reducedBy: 30),
                  ),
                  const Spacer(),
                  VkButton(
                    onPressed: () {},
                    label: 'FECHAR',
                    width: context.widthTransformer(reducedBy: 10),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
