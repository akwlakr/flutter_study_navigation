import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatefulWidget {
  final int? number;
  const RouteOneScreen({this.number, Key? key}) : super(key: key);

  @override
  State<RouteOneScreen> createState() => _RouteOneScreenState((number != null ? number : null));
}

class _RouteOneScreenState extends State<RouteOneScreen> {
  final int? number;

  _RouteOneScreenState(this.number);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Route One Screen",
      children: [
        Text(
          number.toString(),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text("Pop"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (_) => RouteTwoScreen(),
                  settings: RouteSettings(arguments: 712312)
              ),
            );
          },
          child: Text("Push"),
        ),
      ],
    );
  }
}
