import 'package:bai9/models/userinterface.dart';
import 'package:bai9/widgets/components/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MySupport extends StatelessWidget {
  const MySupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInterface>(
      builder: (context, ui, child) {
        return Scaffold(
          backgroundColor: ui.supportBackgroundColor,

          appBar: AppBar(
            title: Text("Support"),
            backgroundColor: ui.appBarColor,
          ),

          drawer: MyDrawer(),

          body: Center(
            child: Text(
              "Hỗ trợ",
              style: TextStyle(
                fontSize: ui.fontSize,
              )
            ),
          ),
        );
      },
    );
  }
}

