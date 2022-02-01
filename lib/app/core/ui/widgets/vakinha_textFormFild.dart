import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class VkTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool obscureTtext;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChange;
  const VkTextFormField({
    Key? key,
    required this.label,
    this.obscureTtext = false,
    this.controller,
    this.validator,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureTtext,
      validator: validator,
      onChanged: onChange,
      cursorColor: context.theme.primaryColor,
      decoration: InputDecoration(
          isDense: true,
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          errorStyle: const TextStyle(color: Colors.redAccent),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide(color: Colors.grey[400]!),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide(color: Colors.grey[400]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide(color: Colors.grey[400]!),
          ),
          filled: true,
          fillColor: Colors.white),
    );
  }
}
