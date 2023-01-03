import 'package:flutter/cupertino.dart';
import 'package:new_proj_estudos/services/prefs_service.dart';

class LoginController {
  ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
 
  String? _login;
  setLogin(String value) => _login = value;

  String? _password;
  setPassword(String value) => _password = value;
  
  Future<bool> authentication() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;
    if (_login == 'teste' && _password == '123') {
      PrefsService.save(_login!);
      return true;
    }

    return false;
  }
}