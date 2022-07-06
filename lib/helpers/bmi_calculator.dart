import 'package:bmi/constants/constant.dart';

class BmiCalculator {
  int? height;
  int? weight;
  double? bmi;
  String? bmiCategory;
  String? bmiDescription;

  BmiCalculator({
    required this.height,
    required this.weight,
  });
  BmiCalculator.fromBmiValue(this.bmi);

  double calculateBmi() {
    double heightInMeters = height! / 100;

    bmi = weight! / (heightInMeters * heightInMeters);

    return bmi!;
  }

  determineBmiCategory() {
    String category = "";
    if (bmi! < 16.0) {
      category = underWeightSevere;
    } else if (bmi! < 17.0) {
      category = underWeightModerate;
    } else if (bmi! < 18.5) {
      category = underWeightMild;
    } else if (bmi! < 25) {
      category = normal;
    } else if (bmi! < 30) {
      category = overWeight;
    } else if (bmi! < 35) {
      category = obeseI;
    } else if (bmi! < 40) {
      category = obeseII;
    } else if (bmi! >= 40) {
      category = obeseIII;
    }
    bmiCategory = category;
    return bmiCategory;
  }

  getHealthRiskDescription() {
    String desc = "";
    switch (bmiCategory!) {
      case underWeightSevere:
      case underWeightModerate:
      case underWeightMild:
        desc = "Possible nutritional deficiency and osteoporosis.";
        break;
      case normal:
        desc = "Low Risk (healthy range).";
        break;
      case overWeight:
        desc =
            "Moderate risk of developing heart disease, high blood pressure, stroke, diabetes mellitus.";
        break;
      case obeseI:
      case obeseII:
      case obeseIII:
        desc =
            "High risk of developing heart disease, high blood pressure, stroke, diabetes mellitus.";
        break;

      default:
    }
    bmiDescription = desc;
    return bmiDescription;
  }
}