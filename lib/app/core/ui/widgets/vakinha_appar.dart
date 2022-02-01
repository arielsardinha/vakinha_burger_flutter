import 'package:flutter/material.dart';

class VkAppBar extends AppBar {
  VkAppBar({Key? key, double elevation = 2})
      : super(
          key: key,
          backgroundColor: Colors.white,
          elevation: 3,
          centerTitle: true,
          title: Image.asset(
            'assets/images/logo.png',
            width: 80,
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        );
}
