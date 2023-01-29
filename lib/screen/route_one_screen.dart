
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';


class RouteOneScreen extends StatefulWidget {
  final int number;
  const RouteOneScreen({required this.number, Key? key}) : super(key: key);

  @override
  State<RouteOneScreen> createState() => _RouteOneScreenState(number);
}

class _RouteOneScreenState extends State<RouteOneScreen> {
  final int number;

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
      )
    ],);
  }
}
