import 'dart:async';

import '../utils/network_util.dart';
import '../models/user.dart';

class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final baseUrl = "http://YOUR_BACKEND_IP/login_app_backend";
  static final loginUrl = baseUrl + "/login.php";
  static final _apiKey = "somerandomkey";

  Future<User> login(String username, String password) {
    return _netUtil.post(loginUrl, body: {
      "token": _apiKey,
      "username": username,
      "password": password
    }).then((dynamic res) {
      print(res.toString());
      if(res["error"]) throw new Exception(res["error_msg"]);
      return new User.map(res["user"]);
    });
  }
}