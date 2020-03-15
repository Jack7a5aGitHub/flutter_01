import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp (home: Scaffold(
        appBar: 
      AppBar(
        backgroundColor: Colors.black,
        title: Text('Sample01',),
      ),
      bottomNavigationBar: new TabBar(
        tabs: <Widget>[
          Tab(icon: new Icon(Icons.home),),
          Tab(icon: new Icon(Icons.rss_feed),),
          Tab(icon: new Icon(Icons.perm_identity),),
          Tab(icon: new Icon(Icons.settings),)
        ],
        controller: _tabController,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,

      ),
      body: TabBarView(
        children: <Widget>[
          new Container(
            color: Colors.lightBlue,
            child: Text('Home Page'),),
          new Container(
            color: Colors.lightBlue,
            child: Text('Trade Page'),),
          new Container(
            color: Colors.lightBlue,
            child: Text('Chart Page'),),
          new Container(
            color: Colors.lightBlue,
            child: Text('Setting Page'),),
        ],
        controller: _tabController,
      ),
      backgroundColor: Colors.black,
      )
      );
  }
}
