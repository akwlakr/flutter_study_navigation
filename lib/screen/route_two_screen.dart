import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_three_screen.dart';

class RouteTwoScreen extends StatefulWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  State<RouteTwoScreen> createState() => _RouteTwoScreenState();
}

class _RouteTwoScreenState extends State<RouteTwoScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!
        .settings
        .arguments; // ModalRoute는 가장 가까운 풀스크린을 찾음(여기서는 RouteTwoScreen이 됨)
    return MainLayout(
      title: "Route Two",
      children: [
        Text(
          "arguments: ${arguments}",
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Pop"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/Three", arguments: 19202);
          },
          child: Text("Push Named"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(
              "/Three",
              //MaterialPageRoute(builder: (BuildContext context) => RouteThreeScreen(),),
              arguments: 999999,
            );
          },
          child: Text("Push Replace"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (BuildContext context) => RouteThreeScreen(),
              ),
              (route) => (route.settings.name == "/"),
            );
          },
          child: Text("Push Remove Until"),
        ),
      ],
    );
  }
}
