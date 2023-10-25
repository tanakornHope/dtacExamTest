part of './user_bloc.dart';

class UserBlocState extends Equatable {
  const UserBlocState();
  @override
  List<Object?> get props => [];
}

class GetUsersBlocState extends UserBlocState {
  const GetUsersBlocState({required this.userViewModel});
  final List<UserViewModel> userViewModel;

  @override
  List<Object?> get props => [userViewModel];
}
