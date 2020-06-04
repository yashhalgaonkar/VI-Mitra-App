import 'package:flutter/material.dart';
import 'package:vi_mitra/constants.dart';
import 'package:vi_mitra/widgets/body_template.dart';

class DeclarationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BodyTemplate(
      size: size,
      title: 'Self Declaration',
      icon: 'selfdec',
      body: Container(
        child: Column(
          //two containers
          //one for the form
          //another for the button
          children: [
            Expanded(
              flex: 5,
              child: Container(
                //the form container
                decoration: kBlockDecoration,
                child: Column(
                  children: [
                    //1st widget
                    //usual place of stay
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Usual Place of stay while attending college',
                            style: kTextStyle.copyWith(fontSize: 16.0),
                          ),
                          Row(
                            children: [
                              Container(),
                              Container(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
