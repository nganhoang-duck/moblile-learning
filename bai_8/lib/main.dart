import 'package:bai8/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bai8/widgets/homepage.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}