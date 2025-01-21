import 'package:employee_task/models/user_model.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  User userData;

  UserDetails({Key? key, required this.userData}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Center(
                  child: Row(
                    children: [
                      Text("id: ", style: TextStyle(fontSize: 20)),
                      Text(
                        widget.userData.id.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Text("Name: ", style: TextStyle(fontSize: 20)),
                      Text(
                        widget.userData.name,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Text("User name: ", style: TextStyle(fontSize: 20)),
                      Text(
                        widget.userData.username,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Text("Email: ", style: TextStyle(fontSize: 20)),
                      Text(
                        widget.userData.email,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Text("Phone: ", style: TextStyle(fontSize: 20)),
                      Text(
                        widget.userData.phone,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Text("Address: ", style: TextStyle(fontSize: 20)),
                      Text(
                        widget.userData.address.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Text("Website: ", style: TextStyle(fontSize: 20)),
                      Text(
                        widget.userData.website,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    children: [
                      Text("Company: ", style: TextStyle(fontSize: 20)),
                      Text(
                        widget.userData.company.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
