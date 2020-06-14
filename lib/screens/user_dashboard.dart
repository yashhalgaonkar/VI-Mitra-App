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
  * The Dashboard is the main entry point of the app. It has name of the user,
  * all the men items, and indicators whether you have filled self declaration
  * and travel history or not 
  */

  final bool isFaculty;
  UserDashboard({this.isFaculty});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //name and user access
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
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
                        //check if the user has filled the form
                        //if the user has filled the form
                        //take them to the successPage
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

/*
List of TODOS:
TODO 1: Make a screen for Self Declaration (Form)
TODO 2: Make the complete Commnication and Awareness Screen

TODO 2: Downloads Screen 
TODO 2: The helpline number screen
TODO 3: Make the success screen with a tick


TODO 4: Make the Bottom Modal Sheet appear if Self Declaration/Travel History is not filled 
TODO 4: as soon as the screen is opened

TODO 6: Each icon on the dashboard will be a HERO icon
TODO: ================== UI COMPLETE============================

TODO: Integrate with thw backend with VIERP
*/
