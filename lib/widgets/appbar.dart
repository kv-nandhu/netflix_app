import 'package:flutter/material.dart';
import 'package:netflix/widgets/tab_bar.dart';

import '../screens/home_screen.dart';

AppBar appBar(BuildContext context) {
  return  AppBar(
              elevation: 0,
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.search),
                  color: Colors.white,
                  iconSize: 25,),
                )
              ],
              backgroundColor: Colors.transparent,
              leading: Image.network('https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: ValueListenableBuilder(
                valueListenable: tabNotifier,
                 builder: (context, isTabBarVisible, _) {
                  return isTabBarVisible ? HomeTabBar(
                    first: 'Tv Show',
                    second: 'Movies',
                    third: 'Categories',
                  ) : SizedBox();
                 }),
                 ),
            );
  
}