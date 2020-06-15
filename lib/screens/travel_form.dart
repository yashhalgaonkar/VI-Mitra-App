import 'package:flutter/material.dart';
import 'package:vi_mitra/constants.dart';
import 'package:vi_mitra/screens/success_screen.dart';
import 'package:vi_mitra/widgets/body_template.dart';
import 'package:vi_mitra/widgets/date_picker_widget.dart';
import 'package:vi_mitra/widgets/form_text_widget.dart';

/**
 * Form to add the travel history to the server
 */

class TravelForm extends StatelessWidget {
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BodyTemplate(
      size: size,
      icon: 'travel',
      title: 'Travel History',
      body: Form(
        key: _formKey,
        onChanged: () {
          Form.of(primaryFocus.context).save();
        },
        child: SingleChildScrollView(
          child: Column(
            //containes two childre
            //one for the form
            //another for the button
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    FormTextWidget(
                      hintText: 'City',
                      controller: cityController,
                    ),
                    FormTextWidget(
                      hintText: 'State',
                      controller: stateController,
                    ),
                    FormTextWidget(
                      hintText: 'Country',
                      controller: countryController,
                    ),
                    DatePickerWidget(
                      controller: startDateController,
                      labelText: 'Start',
                    ),
                    DatePickerWidget(
                      controller: endDateController,
                      labelText: 'End',
                    ),
                  ],
                ),
              ),
              //the button part
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.1),
                child: Center(
                  child: RaisedButton(
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: kAccentColor,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print('Form validated');
                        print(cityController.text);
                        print(stateController.text);
                        print(countryController.text);
                        print(startDateController.text);
                        print(endDateController.text);
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuccessScreen()));
                    },
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
