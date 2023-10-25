import 'dart:convert';

import 'package:dtacexamtest/models/user/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:dtacexamtest/appConfig/env.dart' as ENV;

abstract class UserDataSource {
  Future<UsersModel> getUsersDataSource(String amount);
}

class UserDataSourceImpl implements UserDataSource {
  String _apiEndpoint = '';
  UserDataSourceImpl() {
    _apiEndpoint = ENV.randomuserApiEndpoint;
  }

  @override
  Future<UsersModel> getUsersDataSource(String amount) async {
    try {
      http.Response usersResult =
          await http.get(Uri.parse('$_apiEndpoint/api?results=$amount'));

      return UsersModel.fromJson(jsonDecode(usersResult.body));
    } catch (_) {
      rethrow;
    }
  }
}
