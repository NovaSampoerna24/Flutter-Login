import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/authenticate/authenticate.dart';
import 'package:flutter_login/login/bloc/login_bloc.dart';
import 'package:flutter_login/repository/user_repository.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget{
  final UserRepository userRepository;

  LoginPage({Key key,@required this.userRepository}):assert(userRepository != null),super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Text('Login'),
      ),
      body: BlocProvider(
        create: (context){
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: userRepository
          );
        },
      child: LoginForm(),
      ),
    );
  }
}