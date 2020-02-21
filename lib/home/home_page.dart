import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/authenticate/authenticate.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('logout'),
          onPressed: (){
            BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
          },
        ),
      ),
    );
  }
}