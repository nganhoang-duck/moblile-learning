import "package:bai9/models/userinterface.dart";
import "package:bai9/widgets/components/mydrawer.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInterface>(
      builder: (context, ui, child) {
        return Scaffold(
          backgroundColor: ui.homePageBackgroundColor,
          appBar: AppBar(
            title: Text("Homepage"),
            backgroundColor: ui.appBarColor,
          ),
          drawer: MyDrawer(),
          body: Center(
            child: Text(
              "Trang chủ",
              style: TextStyle(
                fontSize: ui.fontSize,
              ),
            ),
          ),
        );
      },
    );
  }
}
