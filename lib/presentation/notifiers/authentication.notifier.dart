import 'package:cboj_sulfehorateb/domain/repositories/authentication.repository.dart';
import 'package:flutter/foundation.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationRepository authenticationRepository;
  AuthenticationNotifier({required this.authenticationRepository});

}