import 'dart:async';

import 'package:flutter_login/repository/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'authenticate.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent,AuthenticationState>{
  final UserRepository userRepository;
  AuthenticationBloc({@required this.userRepository}):assert(userRepository != null);

  @override
  // TODO: implement initialState
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event)async* {
    // TODO: implement mapEventToState
    if(event is AppStarted){
      final bool hashtoken = await userRepository.hashToken();
      if(hashtoken){
        yield AuthenticationAuthenticated();
      }else{
        yield AuthenticationUnauthenticated();
      }
    }
    if(event is LoggedIn){
      yield AuthenticationLoading();
      await userRepository.persisToken(event.token);
      yield AuthenticationAuthenticated();
    }
    if(event is LoggedOut){
      yield AuthenticationLoading();
      await userRepository.deleteToken();
      yield AuthenticationUnauthenticated();
    }
  }

}