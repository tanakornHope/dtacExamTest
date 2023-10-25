import 'dart:developer' as developer;
import 'package:dtacexamtest/models/user/user_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part './user_bloc_event.dart';
part './user_bloc_state.dart';

class UserBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBloc() : super(const UserBlocState()) {
    on<GetUsersBlocEvent>((event, emit) async {
      developer.log('GetUsersBlocEvent');
    });
  }
}
