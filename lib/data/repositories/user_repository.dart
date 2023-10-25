import 'package:dtacexamtest/data/datasources/user_remote_data_source.dart';
import 'package:dtacexamtest/models/user/user_view_model.dart';

abstract class UserRepository {
  Future<List<UserViewModel>> getUsersRepository(int amount);
}

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;
  UserRepositoryImpl({required this.userDataSource});

  @override
  Future<List<UserViewModel>> getUsersRepository(int amount) async {
    return List<UserViewModel>.empty();
  }
}
