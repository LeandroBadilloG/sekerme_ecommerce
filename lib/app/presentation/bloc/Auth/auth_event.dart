part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get  props => [];
}

class EmailSignInAuthEvent extends AuthEvent{
  final String email, password;

  const EmailSignInAuthEvent({
    required this.email,
    required this.password
});

  @override
  List<Object> get  props => [email, password];
}

class EmailSignUpAuthEvent extends AuthEvent{
  final String email, password;

  const EmailSignUpAuthEvent({
    required this.email,
    required this.password
  });

  @override
  List<Object> get  props => [email, password];
}

class AnonymousSingnInAunthEvent extends AuthEvent{
  const AnonymousSingnInAunthEvent();
}

class GoogleSingnInAunthEvent extends AuthEvent{
  const GoogleSingnInAunthEvent();
}

class FaceboockSingnInAunthEvent extends AuthEvent{
  const FaceboockSingnInAunthEvent();
}

class TwitterSingnInAunthEvent extends AuthEvent{
  const TwitterSingnInAunthEvent();
}

class SingOutAuthEvent extends AuthEvent{
  const SingOutAuthEvent();
}
