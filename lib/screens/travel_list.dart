import 'package:flutter/material.dart';
import 'package:vi_mitra/widgets/body_template.dart';
import 'package:vi_mitra/widgets/travel_detail_card.dart';

class TravelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BodyTemplate(
      size: size,
      title: 'Travel History',
      icon: 'travel',
      isFAB: true,
      onPress: () {
        //navigate to add travel form
      },
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TravelDetailCard(),
            TravelDetailCard(),
            TravelDetailCard(),
            TravelDetailCard(),
          ],
        ),
      ),
    );
  }
}
