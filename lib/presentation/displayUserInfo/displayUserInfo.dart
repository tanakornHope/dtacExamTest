import 'package:dtacexamtest/models/user/user_view_model.dart';
import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:dtacexamtest/appConfig/env.dart' as ENV;
import 'package:getwidget/getwidget.dart';

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
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Prayut_2022.jpg/800px-Prayut_2022.jpg',
    ));
    userViewModel.add(UserViewModel(
      name: 'One',
      gender: 'Male',
      email: 'One@gmail.com',
      age: '10',
      mobileNumber: '0813556103',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Prayut_2022.jpg/800px-Prayut_2022.jpg',
    ));
    userViewModel.add(UserViewModel(
      name: 'One',
      gender: 'Male',
      email: 'One@gmail.com',
      age: '10',
      mobileNumber: '0813556103',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Prayut_2022.jpg/800px-Prayut_2022.jpg',
    ));
    userViewModel.add(UserViewModel(
      name: 'One',
      gender: 'Male',
      email: 'One@gmail.com',
      age: '10',
      mobileNumber: '0813556103',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Prayut_2022.jpg/800px-Prayut_2022.jpg',
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ENV.appBarTitle),
      ),
      body: SizedBox(
        child: ListView.builder(
          controller: ScrollController(),
          itemCount: userViewModel.length,
          itemBuilder: (context, index) {
            return GFCard(
              boxFit: BoxFit.cover,
              title: GFListTile(
                avatar: GFAvatar(
                  backgroundImage: NetworkImage(userViewModel[index].imageUrl.toString()),
                ),
                title: Text(userViewModel[index].name.toString()),
                subTitle: Text(userViewModel[index].gender.toString()),
              ),
              content: Column(children: [
                Row(
                  children: [
                    const Expanded(child: Text('Email:')),
                    Expanded(child: Text(userViewModel[index].email.toString()))
                  ],
                ),
                Row(
                  children: [
                    const Expanded(child: Text('Age:')),
                    Expanded(child: Text(userViewModel[index].age.toString()))
                  ],
                ),
                Row(
                  children: [
                    const Expanded(flex: 1, child: Text('Mobile Number:')),
                    Expanded(flex: 1, child: Text(userViewModel[index].mobileNumber.toString()))
                  ],
                )
              ]),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  GFButton(
                    onPressed: () {},
                    text: 'Buy',
                  ),
                  GFButton(
                    onPressed: () {},
                    text: 'Cancel',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
