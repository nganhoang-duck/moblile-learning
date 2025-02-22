import 'package:bai_7/widgets/homepage.dart';
import 'package:bai_7/widgets/thongke.dart';
import 'package:bai_7/widgets/trogiup.dart';
import 'package:flutter/material.dart';

main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quản lý Route',
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/thongke": (context) => MyThongKe(),
        "/trogiup": (context) => MyTroGiup(),
      },
    );
  }
}

