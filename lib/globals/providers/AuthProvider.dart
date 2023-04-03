import 'dart:convert';

import 'package:ems/globals/api.dart';
import 'package:ems/globals/auth_guard.dart';
import 'package:ems/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../components/popups/alert.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool _isOnLoading = false;
  final List<UserModel> _userList = [];

  setLoading(bool value) {
    _isOnLoading = value;
    notifyListeners();
  }

  setLogin(bool value) {
    _isLoggedIn = value;
    notifyListeners();
  }

  Future login(BuildContext context, data, onLoginResult) async {
    setLoading(true);

    SharedPreferences localStorage = await SharedPreferences.getInstance();

    try {
      var res = await CallApi().postData(data, "login");
      var body = jsonDecode(res.body);
      if (body['success']) {
        localStorage.setString('token', body['token']);
        localStorage.setString('user_details', json.encode(body['user']));
        // ignore: use_build_context_synchronously
        context.read<AuthService>().isAuthenticated = true;
        onLoginResult?.call(true);
      } else {
        // ignore: use_build_context_synchronously
        EMSDialog(
          title: "Invalid Login",
          hasMessage: true,
          withCloseButton: true,
          hasCustomWidget: false,
          message: "The information you provided does not match our records.",
          type: "error",
          buttonNumber: 0,
        ).show(context);
      }
    } catch (e, s) {
      print(s.toString());
      // ignore: use_build_context_synchronously
      EMSDialog(
        title: "Opps!",
        hasMessage: true,
        withCloseButton: true,
        hasCustomWidget: false,
        message: e.toString(),
        type: "error",
        buttonNumber: 0,
      ).show(context);
    }
    setLoading(false);
    notifyListeners();
  }

  Future getuserDetails() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    //List<UserModel> userList = jsonList.map((json) => UserModel.fromJson(json)).toList();
    // _userList = json.decode(localStorage.getString('user_details')) as List<UserModel>;
    print(localStorage.getString('user_details'));
    notifyListeners();
  }

  bool get isOnLoading => _isOnLoading;
  bool get isLoggedIn => _isLoggedIn;
  List<UserModel> get userList => _userList;
}
