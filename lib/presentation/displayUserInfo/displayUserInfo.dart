import 'package:dtacexamtest/models/user/user_view_model.dart';
import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:dtacexamtest/appConfig/env.dart' as ENV;

class DisplayUsersInfo extends StatefulWidget {
  const DisplayUsersInfo({super.key});

  @override
  State<StatefulWidget> createState() => _DisplayUsersInfoState();
}

class _DisplayUsersInfoState extends State<DisplayUsersInfo> {
  final List<UserViewModel> userViewModel = [];

  @override
  void initState() {
    userViewModel.add(UserViewModel(
      name: 'One',
      gender: 'Male',
      email: 'One@gmail.com',
      age: '10',
      mobileNumber: '0813556103',
      imageUrl: '',
    ));
    userViewModel.add(UserViewModel(
      name: 'One',
      gender: 'Male',
      email: 'One@gmail.com',
      age: '10',
      mobileNumber: '0813556103',
      imageUrl: '',
    ));
    userViewModel.add(UserViewModel(
      name: 'One',
      gender: 'Male',
      email: 'One@gmail.com',
      age: '10',
      mobileNumber: '0813556103',
      imageUrl: '',
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ENV.appBarTitle),
      ),
      body: Container(
        child: ListView.builder(itemBuilder:(context, index) {
          
        },),
      ),
    );
  }
}
