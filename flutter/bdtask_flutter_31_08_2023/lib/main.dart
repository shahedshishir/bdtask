import 'package:bdtask_flutter_31_08_2023/screens/movies_screen.dart';
import 'package:flutter/material.dart';
import 'package:bdtask_flutter_31_08_2023/screens/home_screen.dart';
import 'package:bdtask_flutter_31_08_2023/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        'movies_scrren': (context) => MoviesScreen()
      },
    );
  }
}
