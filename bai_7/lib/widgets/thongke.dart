import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThongKe extends StatelessWidget{
  const MyThongKe({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Trang thống kê"),
        backgroundColor: Colors.yellow,
      ),

      body: Center(
        child: ElevatedButton(
          child: Text("Quay lại trang chủ"),
          onPressed: (){
            Navigator.of(context).popAndPushNamed("/");
          },
        ),
      ),
    );
  }
}