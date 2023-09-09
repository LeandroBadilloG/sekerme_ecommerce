part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthLoadingState extends AuthState{
  @override
  List<Object> get props =>[];
}

class GoogleAuthLoadingState extends AuthState{
  @override
  List<Object> get props =>[];
}

class FaceboockAuthLoadingState extends AuthState{
  @override
  List<Object> get props =>[];
}

class TwitterAuthLoadingState extends AuthState{
  @override
  List<Object> get props =>[];
}

class AuthSuccessState extends AuthState{
  @override
  List<Object> get props =>[];
}

class AuthErrorState extends AuthState{
  final String message;

  const AuthErrorState({required this.message});

  @override
  List<Object> get props => [message];
}

class UnAuthState extends AuthState{
  UnAuthState();
  @override
  List<Object> get props => [];
}
