import 'package:flutter/cupertino.dart';
import 'package:flutter_app_database/data/rest1data.dart';
import 'package:flutter_app_database/models/user1.dart';

abstract class LoginPageContract{
  void onLoginSuccess(User1 user1);
  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();
  LoginPagePresenter(this._view);

//Simulator login
  doLogin(String username1, String password1){
    api
        .login(username1, password1)
        .then((user1) => _view.onLoginSuccess(user1))
        .catchError((onError) => _view.onLoginError(onError));
  }
}