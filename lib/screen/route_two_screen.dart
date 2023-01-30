import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';

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
      ],
    );
  }
}
