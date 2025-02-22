import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Trang chủ"),
            onTap: () => Navigator.of(context).popAndPushNamed("/"),
          ),
          ListTile(
            title: Text("Hỗ trợ"),
            onTap: () => Navigator.of(context).popAndPushNamed("/support"),
          ),
          ListTile(
            title: Text("Settings"),
            onTap: () => Navigator.of(context).popAndPushNamed("/settings"),
          ),
        ],
      ),
    );
  }
}
