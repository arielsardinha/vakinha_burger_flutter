import 'package:flutter/material.dart';
import 'package:vakinha_burger_mobile/app/core/ui/vakinha_ui.dart';

class IconBadge extends StatelessWidget {
  final int number;
  final IconData icon;
  const IconBadge({Key? key, required this.icon, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Icon(icon),
      Visibility(
        visible: number > 0,
        child: Positioned(
          top: -5,
          right: -5,
          child: CircleAvatar(
            maxRadius: 9,
            backgroundColor: Colors.red,
            child: Text(
              number.toString(),
              style: VakinhaUi.textBold.copyWith(fontSize: 9),
            ),
          ),
        ),
      )
    ]);
  }
}
