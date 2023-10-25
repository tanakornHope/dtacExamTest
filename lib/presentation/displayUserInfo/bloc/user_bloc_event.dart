part of './user_bloc.dart';

class UserBlocEvent extends Equatable {
  const UserBlocEvent();
  @override
  List<Object?> get props => [];
}

class GetUsersBlocEvent extends UserBlocEvent {
  const GetUsersBlocEvent();
}
