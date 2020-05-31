import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vi_mitra/constants.dart';

class MarkIndicator extends StatelessWidget {
  MarkIndicator({this.isSelfDone, this.isTravelDone});

  final bool isSelfDone;
  final bool isTravelDone;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Row(
          children: [
            //self declaration
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                    color: isSelfDone ? kSafeColor : kDangerColor,
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Self Declaration'),
                    SizedBox(
                      width: 10.0,
                    ),
                    isSelfDone
                        ? SvgPicture.asset('assets/icons/tick.svg')
                        : SvgPicture.asset('assets/icons/cross.svg')
                  ],
                ),
              ),
            ),

            //travel history
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                    color: isTravelDone ? kSafeColor : kDangerColor,
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Travel History'),
                    SizedBox(
                      width: 10.0,
                    ),
                    isTravelDone
                        ? SvgPicture.asset('assets/icons/tick.svg')
                        : SvgPicture.asset('assets/icons/cross.svg')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
