import 'package:assignment2/model/user.dart';
import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_drawer.dart';
import '../widgets/home_navigation_bar.dart';
import '../widgets/subjects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> widgets = [
    const Subjects(),
    Container(
      color: Colors.teal,
    )
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: HomeDrawer(
        user: User(
            name: 'Mohammed Naser Abu Shuqair',
            id: '20192617',
            mail: 'eng.mohammed.shuqair@gmail.com'),
      ),
      body: widgets[currentIndex],
      bottomNavigationBar: HomeNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),

      ),

    );
  }
}
