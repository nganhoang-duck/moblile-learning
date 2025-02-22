import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Trang chủ"),
        backgroundColor: Colors.blue,
      ),

      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed("/thongke");
                },
                child: Text("Trang thống kê"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed("/trogiup");
                },
                child: Text("Trang trợ giúp"),
              )
            ],
          ),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed("/thongke");
              },
              child: Text("Trang thống kê"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed("/trogiup");
              },
              child: Text("Trang trợ giúp"),
            )
          ],
        ),
      ),
    );
  }
}
