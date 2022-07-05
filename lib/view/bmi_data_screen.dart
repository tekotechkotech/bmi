import 'package:bmi/constants/constant.dart';
import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  int height = 100;
  int weight = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0a0e21),
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: const [
                Expanded(
                  child: BmiCard(
                    child: GenderIconText(
                      icon: Icons.male,
                      tittle: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: BmiCard(
                    child: GenderIconText(
                      icon: Icons.female,
                      tittle: 'Female',
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: Container(
              child: BmiCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: labelTextStyle!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
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
                      thumbColor: Colors.red,
                      activeColor: Colors.white,
                      onChanged: (value) {
                        height = value.toInt();
                        setState(() {});
                      },
                    )
                  ],
                ),
              ),
            )),
            Expanded(
              child: Container(
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
                            "60",
                            style: numberTextStyle,
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xff212747),
                                constraints: BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                              ),
                              SizedBox(width: 10),
                              RawMaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xff212747),
                                constraints: BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                              )
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
                            "20",
                            style: numberTextStyle,
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xff212747),
                                constraints: BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                              ),
                              SizedBox(width: 10),
                              RawMaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                                shape: CircleBorder(),
                                fillColor: Color(0xff212747),
                                constraints: BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
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
                height: 80,
                color: Colors.blue,
                child: Center(
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
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xff272A4E),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(15),
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
          color: Colors.white,
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
