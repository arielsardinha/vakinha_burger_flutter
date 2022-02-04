import 'package:flutter/material.dart';
import 'package:vakinha_burger_mobile/app/core/ui/widgets/min_rounded_elevated_button.dart';

class VkRoundedButton extends StatelessWidget {
  final VoidCallback onPressedSom;
  final VoidCallback onPressedSub;
  final int value;
  final double fontSize;
  const VkRoundedButton({
    Key? key,
    required this.onPressedSom,
    required this.value,
    required this.onPressedSub,
    this.fontSize = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinRoundedElevatedButton(
          value: '+',
          onPressed: onPressedSom,
        ),
        Text(
          value.toString(),
          style: TextStyle(color: Colors.grey, fontSize: fontSize),
        ),
        MinRoundedElevatedButton(
          value: '-',
          onPressed: onPressedSub,
        )
      ],
    );
  }
}
