import 'package:flutter/material.dart';

class MinRoundedElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String value;
  const MinRoundedElevatedButton({
    Key? key,
    required this.value,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        value,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: Colors.white,
      ),
    );
  }
}
