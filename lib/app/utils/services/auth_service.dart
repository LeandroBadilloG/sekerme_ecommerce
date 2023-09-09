import 'package:sekerme_ecommerce/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final GoTrueClient _auth = Supabase.instance.client.auth;

  Future<void> singInWithEmail({
    required String email,
    required String password,
  })async{
    try{
      await _auth.signInWithPassword(
          email: email,
          password: password
      );
    }catch(e){
      throw e.toString();
    }
  }

  Future<void> singUpWithEmail({
    required String email,
    required String password,
  })async{
    try{
      await _auth.signUp(
          email: email,
          password: password
      );
    }catch(e){
      throw e.toString();
    }
  }

  Future<void> anonymousSignIn()async{
    try{
      await _auth.signInWithPassword(
          email: 'anonimous@gmail.com',
          password: '123456789'
      );
    }catch(e){
      throw e.toString();
    }
  }

  Future<void> googleSignIn()async{
    try{
      await _auth.signInWithOAuth(Provider.google);
    }catch(e){
      throw e.toString();
    }
  }

  Future<void> facebookSignIn()async{
    try{
      await _auth.signInWithOAuth(Provider.facebook);
    }catch(e){
      throw e.toString();
    }
  }

  Future<void> twitterSignIn()async{
    try{
      await _auth.signInWithOAuth(Provider.twitter);
    }catch(e){
      throw e.toString();
    }
  }
}