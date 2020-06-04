import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff0967D5);
const kPrimaryLight = Color(0xffA0D7FF);
const kAccentColor = Color(0xffF6355F);
const kSafeColor = Color(0xFFA3FF9B);
const kDangerColor = Color(0xFFFFB3B3);

const AccessProfile = {'Student', 'Faculty', 'Admin'};

const kBlockDecoration = BoxDecoration(
  color: kPrimaryLight,
  borderRadius: BorderRadius.all(
    Radius.circular(8.0),
  ),
);

const kTextStyle =
    TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Deafult hint text',
  contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
  border: InputBorder.none,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    //borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    //borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);
