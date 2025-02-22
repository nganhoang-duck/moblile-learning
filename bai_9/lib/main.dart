import "package:bai9/models/userinterface.dart";
import "package:bai9/widgets/homepage.dart";
import "package:bai9/widgets/settings.dart";
import "package:bai9/widgets/support.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserInterface(),
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => MyHomePage(),
          "/support": (context) => MySupport(),
          "/settings": (context) => MySettings(),
        }
      ),
    );
  }
}
