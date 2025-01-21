import 'package:employee_task/models/user_model.dart';
import 'package:employee_task/services/user_service.dart';
//import 'package:yarab/views/user_details.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<User> user = [];
  bool loading = true;
  getUsers() async {
    user = await UserService().getUsers();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.arrow_back),
              iconTheme: IconThemeData(color: Colors.white),
              backgroundColor: Colors.deepPurple,
              title: Center(
                  child: Text(
                'Employees', //app name
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ), //google font Lora
              )),
            ),
            body: ListView.builder(
              itemCount: user.length,
              itemBuilder: (BuildContext context, int index) {
                // return InkWell(
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) =>
                //                 UserDetails(userData: user[index])));
                //   },
                return ListTile(
                  leading: Text("${user[index].id}"),
                  title: Text(user[index].name),
                  subtitle: Text(user[index].phone),
                  trailing: Icon(Icons.person),
                );
                //);
              },
            ),
          );
  }
}
