import 'package:dtacexamtest/models/user/user_view_model.dart';
import 'package:dtacexamtest/presentation/displayUserInfo/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:dtacexamtest/appConfig/env.dart' as ENV;
import 'package:flutter_bloc/flutter_bloc.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(ENV.appBarTitle)),
      ),
      body: SizedBox(
        child: BlocConsumer<UserBloc, UserBlocState>(
          listener: (context, state) {},
          buildWhen: (previous, current) =>
              current is GetUsersBlocState ||
              current is GetUsersErrorBlocState ||
              current is GetUsersLoadingBlocState,
          builder: (context, state) {
            if (state is GetUsersLoadingBlocState) {
              return const Center(child: Text('Loading.'));
            }
            if (state is GetUsersBlocState) {
              state.userViewModel;
              return ListView.builder(
                controller: ScrollController(),
                itemCount: state.userViewModel.length,
                itemBuilder: (context, index) {
                  return GFCard(
                    boxFit: BoxFit.cover,
                    title: GFListTile(
                      avatar: GFAvatar(
                        backgroundImage: NetworkImage(
                            state.userViewModel[index].imageUrl.toString()),
                      ),
                      title: Text(state.userViewModel[index].name.toString()),
                      subTitle:
                          Text(state.userViewModel[index].gender.toString()),
                    ),
                    content: Column(children: [
                      Row(
                        children: [
                          const Expanded(flex: 1, child: Text('Email:')),
                          Expanded(
                              flex: 1,
                              child: Text(
                                  state.userViewModel[index].email.toString()))
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(child: Text('Age:')),
                          Expanded(
                              child: Text(
                                  state.userViewModel[index].age.toString()))
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(
                              flex: 1, child: Text('Mobile Number:')),
                          Expanded(
                              flex: 1,
                              child: Text(state
                                  .userViewModel[index].mobileNumber
                                  .toString()))
                        ],
                      )
                    ]),
                    // buttonBar: GFButtonBar(
                    //   children: <Widget>[
                    //     GFButton(
                    //       onPressed: () {},
                    //       text: 'Buy',
                    //     ),
                    //     GFButton(
                    //       onPressed: () {},
                    //       text: 'Cancel',
                    //     ),
                    //   ],
                    // ),
                  );
                },
              );
            }
            if (state is GetUsersErrorBlocState) {
              return const Center(child: Text('Error: Something went wrong.'));
            }
            return const SizedBox.shrink();
          },
        ),
        // child: ListView.builder(
        //   controller: ScrollController(),
        //   itemCount: userViewModel.length,
        //   itemBuilder: (context, index) {
        //     return GFCard(
        //       boxFit: BoxFit.cover,
        //       title: GFListTile(
        //         avatar: GFAvatar(
        //           backgroundImage: NetworkImage(userViewModel[index].imageUrl.toString()),
        //         ),
        //         title: Text(userViewModel[index].name.toString()),
        //         subTitle: Text(userViewModel[index].gender.toString()),
        //       ),
        //       content: Column(children: [
        //         Row(
        //           children: [
        //             const Expanded(child: Text('Email:')),
        //             Expanded(child: Text(userViewModel[index].email.toString()))
        //           ],
        //         ),
        //         Row(
        //           children: [
        //             const Expanded(child: Text('Age:')),
        //             Expanded(child: Text(userViewModel[index].age.toString()))
        //           ],
        //         ),
        //         Row(
        //           children: [
        //             const Expanded(flex: 1, child: Text('Mobile Number:')),
        //             Expanded(flex: 1, child: Text(userViewModel[index].mobileNumber.toString()))
        //           ],
        //         )
        //       ]),
        //       buttonBar: GFButtonBar(
        //         children: <Widget>[
        //           GFButton(
        //             onPressed: () {},
        //             text: 'Buy',
        //           ),
        //           GFButton(
        //             onPressed: () {},
        //             text: 'Cancel',
        //           ),
        //         ],
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
