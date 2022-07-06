import 'package:bmi/helpers/bmi_calculator.dart';
import 'package:bmi/view/bmi_data_screen.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({Key? key, required this.bmi}) : super(key: key);
  final double bmi;

  @override
  Widget build(BuildContext context) {
    final BmiCalculator bmiCalculator = BmiCalculator.fromBmiValue(bmi);
    // final bmiCategory =
    bmiCalculator.determineBmiCategory();
    // final bmiDesc =
    bmiCalculator.getHealthRiskDescription();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Hitung BMI'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Hasil Perhitungan",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BmiCard(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        bmiCalculator.bmiCategory!,
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff212747),
                        ),
                      ),
                      Text(
                        bmi.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff212747),
                        ),
                      ),
                      Text(
                        bmiCalculator.bmiDescription!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Color(0xff212747),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 80,
              color: const Color(0xff3498DB),
              child: const Center(
                  child: Text(
                "Hitung Ulang",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
