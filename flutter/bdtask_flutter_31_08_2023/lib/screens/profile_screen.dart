import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        body: Center(
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
            ],
          ),
        ),
      ),
    );
  }
}
