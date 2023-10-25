import 'package:flutter/material.dart';

class DisplayUsersInfo extends StatefulWidget {
  const DisplayUsersInfo({super.key});
  final String title = "Hello World";

  @override
  State<StatefulWidget> createState() => _DisplayUsersInfoState();
}

class _DisplayUsersInfoState extends State<DisplayUsersInfo> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
