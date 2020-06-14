import 'package:flutter/material.dart';
import 'package:vi_mitra/models/travel.dart';

/*
* List tile in the travel list that shows the user the details of his recorded travel
*/

class TravelDetailCard extends StatelessWidget {
  const TravelDetailCard({Key key, this.travel}) : super(key: key);

  final Travel travel;

  //data to be taken is input
  //String state
  //String city
  //String startDate
  //String endDate

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 1.0,
                spreadRadius: 1.0,
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 0),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${travel.city}, ${travel.state}, ${travel.country}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '${travel.startDate} - ${travel.endDate}',
                style: TextStyle(fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
