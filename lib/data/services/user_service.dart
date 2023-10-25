import 'package:dtacexamtest/data/repositories/user_repository.dart';
import 'package:dtacexamtest/models/user/user_view_model.dart';

abstract class UserService {
  Future<List<UserViewModel>> getUsersService(int amount);
}

class UserServiceImpl implements UserService {
  UserRepository userRepository;
  UserServiceImpl({required this.userRepository});

  @override
  Future<List<UserViewModel>> getUsersService(int amount) async {
    return List<UserViewModel>.empty();
  }
}
