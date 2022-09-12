import 'package:flutter/material.dart';
import '../components/MyAppBar.dart';
import '../components/MyTabBar.dart';
import '../widgets/GlassBox.dart';

import '../components/MyBottomBar.dart';
import '../tabs/RecentTab.dart';
import '../tabs/TopTab.dart';
import '../tabs/TrendingTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchButtonTapped() {}

//tabbar
  List<List> tabs = [
    ['Recent', const RecentTab()],
    ['Trending', const TrendingTab()],
    ['Top', const TopTab()],
  ];

  // bottom bar

  final int _currentBottomBarIndex = 0;
  void _handleBottomBarIndexChange(int? index) {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottomBarIndex,
            onTap: _handleBottomBarIndexChange,
          ),
        ),
        body: ListView(
          children: [
            //appber + search button
            MyAppBar(title: 'Explore \nCollections', onTap: () => {}),
            // tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(tabs: tabs),
            ),
          ],
        ),
      ),
    );
  }
}
