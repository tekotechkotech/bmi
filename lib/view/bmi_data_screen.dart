import 'package:bmi/constants/constant.dart';
import 'package:bmi/helpers/bmi_calculator.dart';
import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  int height = 100;
  int weight = 50;
  int age = 20;
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0a0e21),
        appBar: AppBar(
          title: const Center(child: Text('BMI Calculator')),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      gender = "male";
                      setState(() {});
                    },
                    child: BmiCard(
                      borderColor:
                          (gender == "male") ? Colors.black : primaryColor,
                      child: const GenderIconText(
                        icon: Icons.male,
                        tittle: 'Male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      gender = "female";
                      setState(() {});
                    },
                    child: BmiCard(
                      borderColor:
                          (gender == "female") ? Colors.black : primaryColor,
                      child: const GenderIconText(
                        icon: Icons.female,
                        tittle: 'Female',
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: BmiCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: labelTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "$height",
                        style: numberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 80,
                    max: 200,
                    thumbColor: Colors.blue,
                    activeColor: Colors.black,
                    inactiveColor: Colors.grey,
                    onChanged: (value) {
                      height = value.toInt();
                      setState(() {});
                    },
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(children: [
                Expanded(
                  child: BmiCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: labelTextStyle,
                        ),
                        Text(
                          "$weight",
                          style: numberTextStyle,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                if (weight > 0) {
                                  weight--;
                                  setState(() {});
                                }
                              },
                              elevation: 0,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xff212747),
                              constraints: const BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                            ),
                            const SizedBox(width: 10),
                            RawMaterialButton(
                              onPressed: () {
                                weight++;
                                setState(() {});
                              },
                              elevation: 0,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xff212747),
                              constraints: const BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: labelTextStyle,
                        ),
                        Text(
                          "$age",
                          style: numberTextStyle,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                if (age > 0) {
                                  age--;
                                  setState(() {});
                                }
                              },
                              elevation: 0,
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xff212747),
                              constraints: const BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                            ),
                            const SizedBox(width: 10),
                            RawMaterialButton(
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              elevation: 0,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              shape: const CircleBorder(),
                              fillColor: const Color(0xff212747),
                              constraints: const BoxConstraints.tightFor(
                                width: 56,
                                height: 56,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            GestureDetector(
              onTap: () {
                final bmiCalculator =
                    BmiCalculator(height: height, weight: weight);
                bmiCalculator.calculateBmi();

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return BmiResultScreen(
                        bmi: bmiCalculator.bmi!,
                      );
                    }),
                  ),
                );
              },
              child: Container(
                height: 80,
                color: const Color(0xff3498DB),
                child: const Center(
                    child: Text(
                  "Hitung BMI",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
          ],
        ));
  }
}

class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    this.child,
    this.borderColor = primaryColor,
  }) : super(key: key);

  final Widget? child;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0xffECF0F1),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor!),
        ),
        margin: const EdgeInsets.all(15),
        child: child);
  }
}

class GenderIconText extends StatelessWidget {
  const GenderIconText({
    Key? key,
    required this.tittle,
    required this.icon,
  }) : super(key: key);

  final String tittle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.black,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          tittle,
          style: labelTextStyle,
        )
      ],
    );
  }
}
