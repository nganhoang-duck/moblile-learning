import '/widgets/quanly_sinhvien.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quan ly sinh vien",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quản lý sinh viên"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
        body: SingleChildScrollView(
            child: QuanLySinhVien()
        ),
    );
  }
}

