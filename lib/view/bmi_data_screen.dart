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
  int height = 170;
  int weight = 50;
  int age = 60;
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
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
                          (gender == "male") ? tersierColor : primaryColor,
                      child: const GenderIconText(
                        icon: Icons.boy,
                        tittle: 'Laki-laki',
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
                          (gender == "female") ? tersierColor : primaryColor,
                      child: const GenderIconText(
                        icon: Icons.girl,
                        tittle: 'Perempuan',
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: BmiCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                    onPressed: () {
                      if (height > 0) {
                        height--;
                        setState(() {});
                      }
                    },
                    elevation: 0,
                    child: const Icon(
                      Icons.remove,
                      color: secondaryColor,
                    ),
                    shape: const CircleBorder(),
                    fillColor: primaryColor,
                    constraints: const BoxConstraints.tightFor(
                      width: 56,
                      height: 56,
                    ),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TINGGI BADAN",
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
                      // Slider(
                      //   value: height.toDouble(),
                      //   min: 80,
                      //   max: 200,
                      //   thumbColor: tersierColor,
                      //   activeColor: primaryColor,
                      //   inactiveColor: Colors.grey,
                      //   onChanged: (value) {
                      //     height = value.toInt();
                      //     setState(() {});
                      //   },
                      // )
                    ],
                  ),
                  const SizedBox(width: 30),
                  RawMaterialButton(
                    onPressed: () {
                      if (height > 0) {
                        height;
                        setState(() {});
                      }
                    },
                    elevation: 0,
                    child: const Icon(
                      Icons.add,
                      color: secondaryColor,
                    ),
                    shape: const CircleBorder(),
                    fillColor: primaryColor,
                    constraints: const BoxConstraints.tightFor(
                      width: 56,
                      height: 56,
                    ),
                  ),
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
                          "BERAT BADAN",
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
                                color: secondaryColor,
                              ),
                              shape: const CircleBorder(),
                              fillColor: primaryColor,
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
                                color: secondaryColor,
                              ),
                              shape: const CircleBorder(),
                              fillColor: primaryColor,
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
                          "UMUR",
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
                                color: secondaryColor,
                              ),
                              shape: const CircleBorder(),
                              fillColor: primaryColor,
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
                                color: secondaryColor,
                              ),
                              shape: const CircleBorder(),
                              fillColor: primaryColor,
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
                color: tersierColor,
                child: const Center(
                    child: Text(
                  "Hitung BMI",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: secondaryColor),
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
          color: secondaryColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: borderColor!, width: 5),
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
          color: primaryColor,
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
