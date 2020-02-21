
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable{
  const LoginEvent();

  @override
  // TODO: implement props
  List<Object> get props => null;
}
class LoginButtonPressed extends LoginEvent{
  final String username;
  final String password;
  const LoginButtonPressed({
  @required this.username,
    @required this.password
});
  List<Object> get props => [username,password];
  String toString()=> 'LoginButtonPressed {username:$username,password:$password}';
}
