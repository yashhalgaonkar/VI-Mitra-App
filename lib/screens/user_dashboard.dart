import 'package:flutter/material.dart';
import 'package:vi_mitra/screens/self_declaration_form.dart';
import 'package:vi_mitra/screens/travel_list.dart';
import 'package:vi_mitra/widgets/access_label.dart';
import 'package:vi_mitra/widgets/dashboard_menu_item.dart';
import 'package:vi_mitra/widgets/mark_indicator.dart';

class UserDashboard extends StatelessWidget {
  //variables to be retrived from server
  // final bool isSelfDeclarationDone;
  // final bool isTravelHistoryDone;
  // final name

  /*
  * This dashboard will be for students as well as faculty who dont
  * have authority to invite visitors.
  * 
  */

  bool isFaculty;
  UserDashboard({this.isFaculty});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        color: Colors.white,
        height: size.height * 0.8,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //name and user access
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello Yash!',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    AccessLabel(
                      label: isFaculty ? 'Faculty' : 'Student',
                    )
                  ],
                ),
              ),
            ),

            //the menu
            //row - 1
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  //guidelines
                  DashboardMenuItem(
                    icon: 'guideline',
                    label: 'Guidelines',
                    onPress: () {},
                  ),
                  //communicaiton and awareness
                  DashboardMenuItem(
                    icon: 'communication',
                    label: 'Communication &\n Awareness',
                    onPress: () {},
                  ),
                ],
              ),
            ),

            //row - 2
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  //parking
                  DashboardMenuItem(
                    icon: 'parking',
                    label: 'Parking',
                    onPress: () {},
                  ),
                  //*travel history
                  DashboardMenuItem(
                    icon: 'travel',
                    label: 'Travel History',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TravelList(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            //row - 3
            //self declaration
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  //*self declaration
                  DashboardMenuItem(
                      icon: 'selfdec',
                      label: 'Self Declaration',
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DeclarationForm(),
                          ),
                        );
                      }),
                ],
              ),
            ),

            MarkIndicator(
              isSelfDone: true,
              isTravelDone: false,
            ),
          ],
        ),
      ),
    );
  }
}
