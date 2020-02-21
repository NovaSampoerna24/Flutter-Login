import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginState extends Equatable{
  const LoginState();
  List<Object> get props => [];
}

class LoginInitial extends LoginState{}
class LoginLoading extends LoginState{}
class LoginFailure extends LoginState{
  final String error;
  const LoginFailure({@required this.error});

  List<Object> get props => [];
  String toString()=>'Login Failure{error:$error}';
}

