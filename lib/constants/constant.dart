import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 0, 0, 0);
const Color secondaryColor = Color.fromARGB(255, 207, 207, 207);
const Color tersierColor = Color.fromARGB(255, 0, 26, 255);

TextStyle labelTextStyle =
    const TextStyle(fontSize: 24, color: tersierColor //Color(0xff8d8e98),
        );

TextStyle numberTextStyle = const TextStyle(
  fontSize: 60,
  fontWeight: FontWeight.bold,
  color: tersierColor,
);

const String underWeightSevere = "Kurus (Terlalu Kurus)";
const String underWeightModerate = "Kurus (Kurus Menengah)";
const String underWeightMild = "Kurus (Kurus Normal)";
const String normal = "Normal";
const String overWeight = "Gemuk";
const String obeseI = "Obesitas (Kelas I)";
const String obeseII = "Obesitas (Kelas II)";
const String obeseIII = "Obesitas (Kelas III)";
