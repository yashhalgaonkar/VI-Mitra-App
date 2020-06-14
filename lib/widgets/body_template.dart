import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vi_mitra/constants.dart';

/*
* A template into which every scrren is fitted
* With a name, icon, body
*/

class BodyTemplate extends StatelessWidget {
  const BodyTemplate({
    Key key,
    this.icon,
    this.title,
    this.body,
    this.isFAB = false,
    this.onPress,
    @required this.size,
  }) : super(key: key);

  final String title;
  final String icon;
  final Size size;
  final Widget body;
  final bool isFAB;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //title of the page
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/$icon.svg',
                  height: 60.0,
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: body,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: isFAB
          ? FloatingActionButton(
              backgroundColor: kAccentColor,
              child: Icon(Icons.add),
              onPressed: onPress)
          : null,
    );
  }
}
