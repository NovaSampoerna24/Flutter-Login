
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class AuthenticationEvent extends Equatable{
  const AuthenticationEvent();

  List<Object> get props=>[];
}

class AppStarted extends AuthenticationEvent{}

class LoggedIn extends AuthenticationEvent{
  final String token;
  const LoggedIn({@required this.token});
  List<Object>get props =>[token];
  String toString()=>'LoggedIn {token:$token}';
}
class LoggedOut extends AuthenticationEvent{}