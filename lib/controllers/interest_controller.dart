import '../models/interest_model.dart';

class InterestController {
  String tinh(double tien, double lai) {
    if (tien <= 0 || lai <= 0) {
      return "Vui lòng nhập hợp lệ!";
    }

    InterestModel model =
    InterestModel(tien: tien, laiThang: lai);

    double nam = model.tinhSoNam();

    return "Sau ${nam.toStringAsFixed(2)} năm, tiền sẽ gấp đôi.";
  }
}