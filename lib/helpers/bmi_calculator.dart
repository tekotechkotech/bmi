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
        desc = "Kemungkinan kekurangan nutrisi dan osteoporosis.";
        break;
      case normal:
        desc = "Resiko Kesehatan Rendah";
        break;
      case overWeight:
        desc =
            "Memiliki risiko terkena penyakit jantung, tekanan darah tinggi, stroke, diabetes mellitus.";
        break;
      case obeseI:
      case obeseII:
      case obeseIII:
        desc =
            "Resiko tinggi terkena penyakit jantung, tekanan darah tinggi, stroke, diabetes mellitus.";
        break;

      default:
    }
    bmiDescription = desc;
    return bmiDescription;
  }
}
