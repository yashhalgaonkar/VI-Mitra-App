import 'package:flutter/material.dart';
import 'package:vi_mitra/screens/travel_form.dart';
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TravelForm(),
          ),
        );
      },
      body: ListView(
        children: [
          TravelDetailCard(),
          TravelDetailCard(),
          TravelDetailCard(),
          TravelDetailCard(),
          TravelDetailCard(),
          TravelDetailCard(),
          TravelDetailCard(),
        ],
      ),
    );
  }
}
