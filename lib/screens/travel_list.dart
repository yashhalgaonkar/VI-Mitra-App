import 'package:flutter/material.dart';
import 'package:vi_mitra/models/travel.dart';
import 'package:vi_mitra/screens/travel_form.dart';
import 'package:vi_mitra/widgets/body_template.dart';
import 'package:vi_mitra/widgets/travel_detail_card.dart';

/*
* The Travel List will show the user list of all the travel he/she has recorded
* into the server.
* It will also provide button to add more travel history

* One travel history record is enough to get entry into the campus
*/

class TravelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //this lsit will be obtained from the server using the userID
    List<Travel> travelList = Travel.travelList;
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
      body: ListView.builder(
        itemCount: travelList.length,
        itemBuilder: (_, index) {
          return TravelDetailCard(
            travel: travelList[index],
          );
        },
      ),
    );
  }
}
