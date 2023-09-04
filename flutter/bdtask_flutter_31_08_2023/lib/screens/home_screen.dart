import 'package:bdtask_flutter_31_08_2023/screens/movies_screen.dart';
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
    MoviesScreen(),
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Shahed Noor"),
                accountEmail: Text("shahednoor28@gmail.com"),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1
                    )
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/profile_image.png"),
                  ),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  selectedIndex = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Messages'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Favorites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
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
