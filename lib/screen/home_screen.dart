import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(title: "Home Screen", children: [
      ElevatedButton(
        onPressed: () async {
          int result = await  Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => RouteOneScreen(number: 123,),
            ),
          );

          print(result);
        },
        child: Text("Push"),
      )
    ]);
  }
}
