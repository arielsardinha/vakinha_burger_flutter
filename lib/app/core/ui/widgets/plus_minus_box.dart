import 'package:flutter/material.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_helper.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/vakinha_rounded_button.dart';

class PlusMinusBox extends StatelessWidget {
  final bool elevated;
  final Color? backgroundColor;
  final String? label;
  final int quantity;
  final double price;
  final VoidCallback minusCallBack;
  final VoidCallback plusCallBack;
  final bool calculateTotal;
  const PlusMinusBox({
    Key? key,
    this.calculateTotal = false,
    required this.quantity,
    required this.price,
    required this.plusCallBack,
    required this.minusCallBack,
    this.elevated = false,
    this.backgroundColor,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevated ? 5 : 0,
      borderRadius: BorderRadius.circular(20),
      shadowColor: Colors.black26,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Visibility(
          visible: label != null,
          child: Text(
            label ?? '',
            style: const TextStyle(
              fontSize: 15,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          replacement: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VkRoundedButton(
                onPressedSom: plusCallBack,
                onPressedSub: minusCallBack,
                value: quantity,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 10),
                constraints: const BoxConstraints(minWidth: 70),
                child: Text(
                  FormatterHelper.formatCurrency(
                      calculateTotal ? price * quantity : price),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
