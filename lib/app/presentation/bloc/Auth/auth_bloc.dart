import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../utils/services/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService = AuthService();
  AuthBloc() : super(AuthInitial()) {
    on<EmailSignInAuthEvent>((event, emit)async{
     emit(AuthLoadingState());
      try{
       await _authService.singInWithEmail(
           email: event.email,
           password: event.password
       );
       emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString())
        );
      }
    });

    on<EmailSignUpAuthEvent>((event, emit)async{
      emit(AuthLoadingState());
      try{
        await _authService.singUpWithEmail(email: event.email, password: event.password);
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString())
        );
      }
    });

    on<AnonymousSingnInAunthEvent>((event, emit)async{
      emit(AuthLoadingState());
      try{
        await _authService.anonymousSignIn();
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });

    on<GoogleSingnInAunthEvent>((event, emit)async{
      emit(GoogleAuthLoadingState());
      try{
        await _authService.googleSignIn();
        emit(AuthSuccessState());
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });

    on<FaceboockSingnInAunthEvent>((event, emit)async{
      emit(FaceboockAuthLoadingState());
      try{
        await _authService.facebookSignIn();
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });

    on<TwitterSingnInAunthEvent>((event, emit)async{
      emit(TwitterAuthLoadingState());
      try{
        await _authService.twitterSignIn();
      }catch(e){
        emit(AuthErrorState(message: e.toString()));
      }
    });
  }
}
