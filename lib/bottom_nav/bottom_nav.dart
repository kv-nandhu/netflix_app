import 'package:flutter/material.dart';
import 'package:netflix/screens/games.dart';
import 'package:netflix/screens/home_screen.dart';

class MyBottom extends StatefulWidget {
  const MyBottom({super.key});

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  int indexNum = 0;
  List screen = [
    const HomeScreen(),
    const GameScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen.elementAt(indexNum),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const [
            //item 1
            BottomNavigationBarItem(
              icon: InkResponse(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Icon(Icons.home_outlined),
            ),
            label: 'Home',
            ),

            //item 2

            BottomNavigationBarItem(
              icon: InkResponse(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Icon(Icons.sports_esports_outlined),
            ),
            label: 'Games',
            ),

            //item 3
            BottomNavigationBarItem(
              icon: InkResponse(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Icon(Icons.video_library_outlined),
            ),
            label: "News & hot",
            ),

            //item 4
            BottomNavigationBarItem(
              icon: InkResponse(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Icon(Icons.person_2_outlined),
            ),
            label: "My Netflix",
            )
        ],
           currentIndex: indexNum,

        showSelectedLabels: true,
        iconSize: 30,
        showUnselectedLabels: true,
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: Color.fromARGB(255, 161, 151, 151),
           onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
        ),
    );
  }
}