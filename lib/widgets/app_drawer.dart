import 'package:flutter/material.dart';
import '../views/contact_view.dart';

class AppDrawer extends StatelessWidget {
  final Function(String, String) showInfo;

  const AppDrawer({required this.showInfo});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.brown[50],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // 🔥 PROFILE HEADER
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF6D4C41),
              ),

              accountName: Text(
                "Vũ Phong",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              accountEmail: null,

              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person,
                    size: 40, color: Colors.brown),
              ),
            ),

            // MENU
            ListTile(
              leading: Icon(Icons.info, color: Colors.brown),
              title: Text("Giới thiệu apps"),
              onTap: () {
                showInfo("Giới thiệu", "Ứng dụng tính lãi suất.");
              },
            ),

            ListTile(
              leading: Icon(Icons.contact_mail, color: Colors.brown),
              title: Text("Thông tin liên hệ"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactView()),
                );
              },
            ),

            Divider(),

            // thêm option cho xịn
            ListTile(
              leading: Icon(Icons.settings, color: Colors.brown),
              title: Text("Cài đặt"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.logout, color: Colors.brown),
              title: Text("Đăng xuất"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}