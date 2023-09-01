import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 25),
                CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage("images/profile_image.png")
                ),
                SizedBox(height: 10),
                Text("Shahed Noor", style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                Text("Always ready to explore new things!"),
                SizedBox(height: 10),
                Container(
                  width: 150,
                  height: 40,
                  child: TextButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Text("Edit Profile"),
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 201, 129, 213).withOpacity(0.1)
                    ),
                    child: Icon(Icons.settings),
                  ),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 201, 129, 213).withOpacity(0.1)
                    ),
                    child: Icon(Icons.blinds_closed_sharp),
                  ),
                  title: Text("Billing Details"),
                ),
                ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 201, 129, 213).withOpacity(0.1)
                    ),
                    child: Icon(Icons.person_add_alt),
                  ),
                  title: Text("User Management"),
                ),
                ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 201, 129, 213).withOpacity(0.1)
                    ),
                    child: Icon(Icons.info),
                  ),
                  title: Text("Information"),
                ),
                ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 201, 129, 213).withOpacity(0.1)
                    ),
                    child: Icon(Icons.logout),
                  ),
                  title: Text("Logout"),
                  textColor: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
