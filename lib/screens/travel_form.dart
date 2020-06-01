import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vi_mitra/constants.dart';
import 'package:vi_mitra/widgets/body_template.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class TravelForm extends StatefulWidget {
  @override
  _TravelFormState createState() => _TravelFormState();
}

class _TravelFormState extends State<TravelForm> {
  String _date;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BodyTemplate(
      size: size,
      icon: 'travel',
      title: 'Travel History',
      body: Container(
        child: Column(
          //containes two childre
          //one for the form
          //another for the button
          children: [
            Container(
              decoration: kBlockDecoration,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //location picker for teh country
                    Container(color: kPrimaryLight, child: LocationPicker()),
                    Container(
                      color: kPrimaryLight,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //* the country button
                          LocationPicker(),
                          SizedBox(width: 20.0),
                          LocationPicker()
                        ],
                      ),
                    ),

                    //date picking
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 10.0, 10.0, 10.0),
                            child: DatePickerWidget(
                              date: _date,
                              onPress: () {
                                DatePicker.showDatePicker(context,
                                    theme: DatePickerTheme(
                                        containerHeight: 210.0,
                                        backgroundColor: Colors.white),
                                    showTitleActions: true,
                                    minTime: DateTime(2000, 1, 1),
                                    maxTime: DateTime(2022, 12, 31),
                                    onConfirm: (date) {
                                  print('confirm $date');
                                  _date =
                                      '${date.year} - ${date.month} - ${date.day}';
                                  setState(() {});
                                },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.en);
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                10.0, 10.0, 15.0, 10.0),
                            child: DatePickerWidget(
                              date: _date,
                              onPress: () {
                                DatePicker.showDatePicker(context,
                                    theme: DatePickerTheme(
                                        containerHeight: 210.0,
                                        backgroundColor: Colors.white),
                                    showTitleActions: true,
                                    minTime: DateTime(2000, 1, 1),
                                    maxTime: DateTime(2022, 12, 31),
                                    onConfirm: (date) {
                                  print('confirm $date');
                                  _date =
                                      '${date.year} - ${date.month} - ${date.day}';
                                  setState(() {});
                                },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.en);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Did you self quarantine?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: true,
                                ),
                                Checkbox(
                                  value: false,
                                  activeColor: kAccentColor,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text('No',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0))
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //the button part
            Expanded(
              child: Container(
                child: Center(
                  child: RaisedButton(
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: kAccentColor,
                    onPressed: () {
                      //the submit button is oressed
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({Key key, @required String date, this.onPress})
      : _date = date,
        super(key: key);

  final String _date;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'From',
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(
          height: 8.0,
        ),
        GestureDetector(
          child: Material(
            child: Container(
              alignment: Alignment.center,
              height: 55.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      " $_date",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(width: 15.0),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            color: Colors.white,
          ),
          onTap: onPress,
        ),
      ],
    );
  }
}

class LocationPicker extends StatelessWidget {
  const LocationPicker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //*CITY
            Text(
              'City',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              color: Colors.white,
              child: DropdownButtonHideUnderline(
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton<String>(
                    onTap: () {},
                    value: 'India',
                    items: [
                      'Indonesia',
                      'Bangladesh',
                      'United States of America',
                      'Japan',
                      'India'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    isExpanded: true,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SvgPicture.asset(
                        'assets/icons/dropdown.svg',
                        color: kPrimaryColor,
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// DatePickerWidget(
//                         date: _date,
//                         onPress: () {
//                           DatePicker.showDatePicker(context,
//                               theme: DatePickerTheme(
//                                   containerHeight: 210.0,
//                                   backgroundColor: Colors.white),
//                               showTitleActions: true,
//                               minTime: DateTime(2000, 1, 1),
//                               maxTime: DateTime(2022, 12, 31),
//                               onConfirm: (date) {
//                             print('confirm $date');
//                             _date =
//                                 '${date.year} - ${date.month} - ${date.day}';
//                             setState(() {});
//                           },
//                               currentTime: DateTime.now(),
//                               locale: LocaleType.en);
//                         },
//                       ),
