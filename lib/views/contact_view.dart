import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin liên hệ"),
        backgroundColor: Color(0xFF6D4C41),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("👤 Tên: Vũ Phong", style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                Text("📧 Gmail: vuphong171004@gmail.com",
                    style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                Text("📱 SĐT: 0123456789",
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}