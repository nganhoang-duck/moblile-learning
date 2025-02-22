import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTroGiup extends StatelessWidget{
  const MyTroGiup({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Trang trợ giúp"),
        backgroundColor: Colors.purple,
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