import "package:flutter/material.dart";

class FormNhapSinhVien extends StatelessWidget {
  final Function addSinhVien;

  final _maController = TextEditingController();
  final _hoVaTenController = TextEditingController();
  final _diemTotNghiepController = TextEditingController();

  FormNhapSinhVien(this.addSinhVien);

  submitData(BuildContext context){
    final enterMaController = _maController.text;
    final enterHoVaTenController = _hoVaTenController.text;
    final enterDiemTotNghiepController = _diemTotNghiepController.text;
    try {
      if ((int.parse(enterMaController) != null) &&
          (enterHoVaTenController.length > 6) &&
          (double.parse(enterDiemTotNghiepController) != null))
        addSinhVien(
          int.parse(enterMaController),
          enterHoVaTenController,
          double.parse(enterDiemTotNghiepController),
        );
      else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Họ và tên nhập vào bị lỗi")
        ));
        return;
      }
    } catch (err){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Số nhập vào bị lỗi"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _maController,
              decoration: InputDecoration(labelText: "Mã sinh viên"),
              onSubmitted: (_) => submitData(context),
            ),
            TextField(
              controller: _hoVaTenController,
              decoration: InputDecoration(labelText: "Họ và tên"),
              onSubmitted: (_) => submitData(context),
            ),
            TextField(
              controller: _diemTotNghiepController,
              decoration: InputDecoration(labelText: "Điểm tốt nghiệp"),
              onSubmitted: (_) => submitData(context),
            ),
            ElevatedButton(
              onPressed: (){
                submitData(context);
              },
              child: Text("Thêm sinh viên"),
            )
          ],
        ),
      ),
    );
  }
}

