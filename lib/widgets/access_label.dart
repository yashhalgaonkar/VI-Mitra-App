import 'package:flutter/material.dart';
import 'package:vi_mitra/constants.dart';
/*
* The label which shows whether the user is Faculty or Student
*/

class AccessLabel extends StatelessWidget {
  AccessLabel({this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kAccentColor,
      borderRadius: BorderRadius.horizontal(
          right: Radius.circular(15.0), left: Radius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
