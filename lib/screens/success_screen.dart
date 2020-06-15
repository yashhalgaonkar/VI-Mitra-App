import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String title;

  const SuccessScreen({Key key, this.title = 'Success'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/success.gif', height: size.height * 0.3),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Saved',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
