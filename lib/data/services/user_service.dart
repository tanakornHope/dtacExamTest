import 'package:dtacexamtest/data/repositories/user_repository.dart';
import 'package:dtacexamtest/models/user/user_model.dart';
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
      UsersModel userResult =
          await userRepository.getUsersRepository(amount);

      List<UserViewModel> listOfUserViewModel = [];
      listOfUserViewModel.addAll(
        userResult.results!.map(
          (userResultsElement) {
            String name =
                '${userResultsElement.name!.title} ${userResultsElement.name!.first} ${userResultsElement.name!.last}';
            String gender = userResultsElement.gender.toString();
            String email = userResultsElement.email.toString();
            String age = userResultsElement.dob!.age.toString();
            String mobileNumber = userResultsElement.phone.toString();
            String imageUrl = userResultsElement.picture!.medium.toString();

            return UserViewModel(
              name: name,
              gender: gender,
              email: email,
              age: age,
              mobileNumber: mobileNumber,
              imageUrl: imageUrl,
            );
          },
        ),
      );

      return listOfUserViewModel;
    } catch (_) {
      rethrow;
    }
  }
}
