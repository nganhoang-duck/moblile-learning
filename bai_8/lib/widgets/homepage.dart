import 'package:bai8/models/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends  StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Consumer<CounterModel>(
        builder: (context, counter, child){
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    counter.increment();
                  },
                  child: Text("+1")
                ),
                Text(
                  "${counter.currentCounter}",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                    onPressed: (){
                      counter.decrement();
                    },
                    child: Text("-1")
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}