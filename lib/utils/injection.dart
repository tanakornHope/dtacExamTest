import 'package:dtacexamtest/presentation/displayUserInfo/bloc/user_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void getIt() async {
  if (!locator.isRegistered<UserBloc>()) {
    locator.registerFactory(
      () => UserBloc(),
    );
  }
}
