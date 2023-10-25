import 'package:dtacexamtest/data/datasources/user_remote_data_source.dart';
import 'package:dtacexamtest/models/user/user_model.dart';
import 'package:dtacexamtest/models/user/user_view_model.dart';

abstract class UserRepository {
  Future<List<UserViewModel>> getUsersRepository(String amount);
}

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;
  UserRepositoryImpl({required this.userDataSource});

  @override
  Future<List<UserViewModel>> getUsersRepository(String amount) async {
    try {
      UsersModel userResult = await userDataSource.getUsersDataSource(amount);
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
