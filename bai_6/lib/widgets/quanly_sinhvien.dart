import '/widgets/danhsach_sinhvien.dart';
import '/widgets/formnhap_sinhvien.dart';
import 'package:flutter/material.dart';

import '../models/sinhvien.dart';

class QuanLySinhVien extends StatefulWidget {
  @override
  State<QuanLySinhVien> createState() => _QuanLySinhVienState();
}

class _QuanLySinhVienState extends State<QuanLySinhVien> {
  final List<SinhVien> danhSachSinhVien = [
    SinhVien(
      ma: 12345678,
      hoVaTen: "Nguyen Thi Huong",
      ngaySinh: DateTime(2002, 8, 20),
      diemTotNghiep: 8.2,
    ),
    SinhVien(
      ma: 22334455,
      hoVaTen: "Tran Van Doan",
      ngaySinh: DateTime(1999, 12, 7),
      diemTotNghiep: 7.9,
    ),
    SinhVien(
      ma: 99776622,
      hoVaTen: "To Lan Anh",
      ngaySinh: DateTime(1998, 11, 6),
      diemTotNghiep: 9.2,
    ),
  ];

  addSinhVien(int ma, String hoVaTen, double diemTotNghiep){
    final newSinhVien = SinhVien(
        ma: ma,
        hoVaTen: hoVaTen,
        ngaySinh: DateTime.now(),
        diemTotNghiep: diemTotNghiep
    );
    setState(() {
      danhSachSinhVien.add(newSinhVien);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormNhapSinhVien(addSinhVien),
        DanhSachSinhVien(danhSachSinhVien),
      ],
    );
  }
}