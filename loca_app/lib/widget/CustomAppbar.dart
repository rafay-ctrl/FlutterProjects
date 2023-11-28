import 'package:flutter/material.dart';
import 'package:loca_app/widget/widget.dart';

class SimpleAppbar extends StatelessWidget {
  const SimpleAppbar({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Localization App"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {
                  LanguagePicker();
                },
                icon: Icon(Icons.language)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add))
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.yellow],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
          ),
          bottom: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'Feeds',
                ),
                Tab(
                  icon: Icon(Icons.face),
                  text: 'Profile',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'Settings',
                )
              ]),
          elevation: 5,
          titleSpacing: 5,
        ),
      body: TabBarView(children: [
        
      ]),));
}
