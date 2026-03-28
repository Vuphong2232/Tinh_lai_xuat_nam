import 'dart:math';

class InterestModel {
  double tien;
  double laiThang;

  InterestModel({required this.tien, required this.laiThang});

  double tinhSoNam() {
    double r = laiThang / 100;
    return log(2) / log(1 + r);
  }
}