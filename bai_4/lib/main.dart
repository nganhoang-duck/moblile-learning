import 'package:flutter/material.dart';

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter>{
  int _counter =0;
  Widget build(BuildContext build) {
    return MaterialApp(
      home:Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                      _counter> 0 ? _counter -- :0;
                  });
                },
              ),
              Text("$_counter",
                style: TextStyle(
                  fontSize:46,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  setState(()
                  => _counter++
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
main() => runApp(Counter());