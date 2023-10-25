import 'package:dtacexamtest/data/datasources/user_remote_data_source.dart';
import 'package:dtacexamtest/data/repositories/user_repository.dart';
import 'package:dtacexamtest/data/services/user_service.dart';
import 'package:dtacexamtest/presentation/displayUserInfo/bloc/user_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void getIt() async {
  if (!locator.isRegistered<UserBloc>()) {
    locator.registerFactory<UserBloc>(
      () => UserBloc(),
    );
  }

  if (!locator.isRegistered<UserDataSource>()) {
    locator.registerFactory<UserDataSource>(
      () => UserDataSourceImpl(),
    );
  }

  if (!locator.isRegistered<UserRepository>()) {
    locator.registerFactory<UserRepository>(
      () => UserRepositoryImpl(userDataSource: locator()),
    );
  }

  if (!locator.isRegistered<UserService>()) {
    locator.registerFactory<UserService>(
      () => UserServiceImpl(userRepository: locator()),
    );
  }
}
