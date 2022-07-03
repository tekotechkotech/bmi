import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.red,
            )),
            Expanded(
                child: Container(
              color: Colors.yellow,
            )),
            Expanded(
                child: Container(
              color: Colors.green,
            )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return BmiResultScreen();
                    }),
                  ),
                );
              },
              child: Container(
                height: 60,
                color: Colors.blue,
                child: Center(child: Text("Hitung BMI")),
              ),
            ),
          ],
        ));
  }
}
