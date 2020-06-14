import 'package:flutter/material.dart';
import 'package:vi_mitra/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
* Menu items showed at Dashboard
*/

class DashboardMenuItem extends StatelessWidget {
  DashboardMenuItem({this.icon, this.label, this.onPress});

  final String icon;
  final String label;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        child: Container(
          decoration: kBlockDecoration,
          margin: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/$icon.svg'),
              SizedBox(
                height: 10.0,
              ),
              Text(
                label,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        onTap: onPress,
      ),
    );
  }
}
