import 'package:flutter/material.dart';
import 'package:vi_mitra/constants.dart';
import 'package:vi_mitra/widgets/body_template.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class TravelForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BodyTemplate(
      size: size,
      icon: 'travel',
      title: 'Travel History',
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //the form
              Expanded(
                flex: 7,
                child: Container(
                  decoration: kBlockDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        //1strow
                        //city and state
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              //city
                              LocationPicker(),
                              SizedBox(width: 15),
                              LocationPicker(),
                            ],
                          ),
                        ),

                        //second row
                        Expanded(
                          flex: 1,
                          child: LocationPicker(),
                        ),

                        //third row
                        //date pickers
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'From',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Container(
                                      height: 36.0,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'From',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Container(
                                      height: 36.0,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        //the question
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Text('Did you self quarantine?'),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),

              //the submit button
              Expanded(
                flex: 1,
                child: Container(
                  child: Center(
                    child: RaisedButton(
                      child: Text(
                        'Confirm',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: kAccentColor,
                      onPressed: () {
                        //submit the form
                        // DatePicker.showDatePicker(context,
                        //     showTitleActions: true,
                        //     minTime: DateTime(2018, 3, 5),
                        //     maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                        //   print('change $date');
                        // }, onConfirm: (date) {
                        //   print(date);
                        //   print('confirm $date');
                        // }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
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
                    'United States',
                    'Japan',
                    'India'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  isExpanded: true,
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
