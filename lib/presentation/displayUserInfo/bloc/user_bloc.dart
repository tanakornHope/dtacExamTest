import 'package:dtacexamtest/data/services/user_service.dart';
import 'package:dtacexamtest/models/user/user_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dtacexamtest/appConfig/env.dart' as ENV;

part './user_bloc_event.dart';
part './user_bloc_state.dart';

class UserBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserService userService;
  UserBloc({required this.userService}) : super(const UserBlocState()) {
    on<GetUsersBlocEvent>((event, emit) async {
      try {
        emit(const GetUsersLoadingBlocState());
        List<UserViewModel> listOfUserViewModel =
            await userService.getUsersService(ENV.amountUsersForDisplay);

        emit(GetUsersBlocState(userViewModel: listOfUserViewModel));
        emit(const UserBlocState());
      } catch (_) {
        emit(const GetUsersErrorBlocState());
        emit(const UserBlocState());
      }
    });
  }
}
