import 'package:dtacexamtest/data/datasources/user_remote_data_source.dart';
import 'package:dtacexamtest/models/user/user_model.dart';

abstract class UserRepository {
  Future<UsersModel> getUsersRepository(String amount);
}

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;
  UserRepositoryImpl({required this.userDataSource});

  @override
  Future<UsersModel> getUsersRepository(String amount) async {
    try {
      UsersModel userResult = await userDataSource.getUsersDataSource(amount);
      return userResult;
    } catch (_) {
      rethrow;
    }
  }
}
