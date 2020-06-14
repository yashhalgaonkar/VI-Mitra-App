import 'package:flutter/material.dart';

class FormTextWidget extends StatelessWidget {
  const FormTextWidget({this.hintText, this.controller});

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      textAlignVertical: TextAlignVertical.bottom,
      validator: (value) {
        if (value.isEmpty) return 'Enter $hintText Name';
        return null;
      },
      decoration: InputDecoration(
        labelText: hintText,
      ),
    );
  }
}
