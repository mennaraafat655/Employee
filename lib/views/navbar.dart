import 'package:flutter/material.dart';
//import 'package:yarab/views/home_page.dart';

import 'package:employee_task/views/profile.dart';
//import 'package:yarab/views/user.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPage();
}

class _NavPage extends State<NavPage> {
  // list of hot offers images

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: SizedBox(
            width: 250,
            height: 60,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // styling the button

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.deepPurple, // Button color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: Text("Employees",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    )))),
      ),
    );
  }
}
