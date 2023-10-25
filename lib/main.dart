import 'package:dtacexamtest/presentation/displayUserInfo/bloc/user_bloc.dart';
import 'package:dtacexamtest/presentation/displayUserInfo/displayUserInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dtacexamtest/utils/injection.dart' as di;

void main() {
  di.getIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const DisplayUsersInfo(),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => di.locator<UserBloc>()
              ..add(
                const GetUsersBlocEvent(),
              ),
          ),
        ],
        child: const DisplayUsersInfo(),
      ),
    );
  }
}
