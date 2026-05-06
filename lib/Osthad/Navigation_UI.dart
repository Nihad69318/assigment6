import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationUi extends StatefulWidget {
  const NavigationUi({super.key});

  @override
  State<NavigationUi> createState() => _NavigationUiState();
}

class _NavigationUiState extends State<NavigationUi>with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Tab_Bar View"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        bottom: TabBar(
          controller: _tabController,
            tabs: [
          
          Tab(icon: Icon(Icons.home),text:"Home",),
          Tab(icon: Icon(Icons.favorite),text:"Favorite",),
          Tab(icon: Icon(Icons.settings),text:"settings",),
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
          children: [
        //
        // Container(
        //   height: 100,
        //   width: 100,
        //   color: Colors.green,
        //   child: Center(child: Text("Home")),
        // ),
        // Container(
        //   height: 100,
        //   width: 100,
        //   color: Colors.red,
        //   child: Center(child: Text("Favorite")),
        // ),
        // Container(
        //   height: 100,
        //   width: 100,
        //   color: Colors.green,
        //   child: Center(child: Text("Settings")),
        // ),






      ]),
    );
  }
}

