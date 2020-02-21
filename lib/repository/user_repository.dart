import 'package:flutter/cupertino.dart';

class UserRepository {
  Future<String> authenticate(
      {@required String username, @required String password}) async {
    await Future.delayed(Duration(seconds: 1));
    return 'token';
  }
  Future<void> deleteToken()async{
    await Future.delayed(Duration(seconds: 1));
    return;
  }
  Future<void>persisToken(String token)async{
    await Future.delayed(Duration(seconds: 1));
    return ;
  }
  Future<bool>hashToken()async{
    await Future.delayed(Duration(seconds: 1));
    return false;
  }
}
