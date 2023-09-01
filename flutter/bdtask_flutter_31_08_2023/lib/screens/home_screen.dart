import 'package:flutter/material.dart';
import 'profile_screen.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final List<Widget> widgetOptions = [
    Text('Movies'),
    Text('Web Series'),
    ProfileScreen(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReelFlix"),
      ),
      drawer: Drawer(
          child: UserAccountsDrawerHeader(
            accountName: Text("Shahed Noor"),
            accountEmail: Text("shahednoor28@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/profile_image.png"),
            ),
            )
          ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Movies",
            icon: Icon(Icons.movie),
          ),
          BottomNavigationBarItem(
            label: "Web Series",
            icon: Icon(Icons.movie_filter),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
