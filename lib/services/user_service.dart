// import 'dart:convert';

import 'package:employee_task/models/user_model.dart';
import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  String endpoint =
      "https://jsonplaceholder.typicode.com/users"; //link of user data
  Future<List<User>> getUsers() async {
    List<User> users = [];
    try {
      var response = await Dio().get(endpoint);
      var data = response.data;
      //get all data of all users
      // var cachedData = jsonEncode(data); // encode by7awel el jason l data
      // final SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.setString(
      //     "userData", cachedData); //ens of get all data of all users
      data.forEach((json) {
        //momken assamy zay ma ana 3aiza mosh lazem json
        User user = User.fromJson(json);
        users.add(user);
      });
    } catch (e) {
      print(e.toString());
    }
    return users;
  }
}
