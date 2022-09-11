import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List<List> tabs;
  const MyTabBar({Key? key, required this.tabs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //tab bar
        TabBar(
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.black,
          tabs: [...(tabs.map((tab) => Text(tab[0])))],
        ),

        // Tab view
        Expanded(child: TabBarView(children: [...(tabs.map((tab) => tab[1]))]))
      ],
    );
  }
}
