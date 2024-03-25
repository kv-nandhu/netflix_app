import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/widgets/appbar.dart';
import 'package:netflix/widgets/card_home.dart';
import 'package:netflix/widgets/tab_bar.dart';

ValueNotifier<bool> tabNotifier = ValueNotifier(true);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: RefreshIndicator(
          backgroundColor: Colors.transparent,
          color: Colors.white,
          onRefresh: () async {
            await Future.delayed(
              Duration(seconds: 2),
              () {
                setState(() {});
              },
            );
          },
          child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
           appBar: appBar(context),
            body: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if(direction == ScrollDirection.reverse) {
                tabNotifier.value = false;
              }else if (direction == ScrollDirection.forward) {
                tabNotifier.value = true;
              }
              return true;
              },
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 119,
                      ),
                      Center(
                        child: cardHome(),
                      ),
                      
                      
                    ],
                  ),
                )
              )),

          ),
        ));
  }
  

}
