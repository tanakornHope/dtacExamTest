import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:dtacexamtest/appConfig/env.dart' as ENV;

class DisplayUsersInfo extends StatefulWidget {
  const DisplayUsersInfo({super.key});
  final String title = "Hello World";

  @override
  State<StatefulWidget> createState() => _DisplayUsersInfoState();
}

class _DisplayUsersInfoState extends State<DisplayUsersInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ENV.appBarTitle),
      ),
      body: Container(),
    );
  }
}
