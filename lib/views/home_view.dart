import 'package:flutter/material.dart';
import '../controllers/interest_controller.dart';
import '../widgets/app_drawer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController tienController = TextEditingController();
  final TextEditingController laiController = TextEditingController();

  String ketQua = "";
  final controller = InterestController();

  void tinhToan() {
    double tien = double.tryParse(tienController.text) ?? 0;
    double lai = double.tryParse(laiController.text) ?? 0;

    setState(() {
      ketQua = controller.tinh(tien, lai);
    });
  }

  void showInfo(String title, String content) {
    showDialog(
      context: context,
      builder: (_) =>
          AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Đóng"),
              )
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Máy tính lãi suất"),
      ),

      drawer: AppDrawer(showInfo: showInfo),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card chứa form
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 120, child: Text("Số tiền")),
                        Expanded(
                          child: TextField(
                            controller: tienController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.brown[50],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        SizedBox(width: 120, child: Text("Lãi hàng tháng")),
                        Expanded(
                          child: TextField(
                            controller: laiController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.brown[50],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // Kết quả
            Text(
              ketQua.isEmpty
                  ? "Số năm để tiền tăng gấp đôi"
                  : ketQua,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.brown[800],
              ),
            ),

            SizedBox(height: 20),

            // Nút đẹp hơn
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: tinhToan,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6D4C41),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("Tính toán"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}