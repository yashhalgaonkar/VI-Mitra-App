import 'package:flutter/material.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    Key key,
    this.labelText,
    @required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;

  Future<DateTime> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020, 1),
        lastDate: DateTime.now());

    return picked;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value.isEmpty) return 'Choose a Date';
        return null;
      },
      decoration: InputDecoration(
        labelText: '$labelText Date',
      ),
      textAlignVertical: TextAlignVertical.bottom,
      readOnly: true,
      onTap: () async {
        DateTime picked = await _selectDate(context);
        controller.text = '${picked.day}/${picked.month}/${picked.year}';
      },
    );
  }
}
