import 'package:dtacexamtest/data/repositories/user_repository.dart';
import 'package:dtacexamtest/models/user/user_view_model.dart';

abstract class UserService {
  Future<List<UserViewModel>> getUsersService(String amount);
}

class UserServiceImpl implements UserService {
  UserRepository userRepository;
  UserServiceImpl({required this.userRepository});

  @override
  Future<List<UserViewModel>> getUsersService(String amount) async {
    try {
      List<UserViewModel> userResult =
          await userRepository.getUsersRepository(amount);
      return userResult;
    } catch (_) {
      rethrow;
    }
  }
}
