import 'package:flutter/material.dart';

class VkButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final double? whidth;
  final double? height;
  final Color? color;
  const VkButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.whidth,
    this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: whidth,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: color,
        ),
      ),
    );
  }
}
