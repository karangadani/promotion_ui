import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int currentTabIndex =0;

  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBar(
                  onTap: (index) => setState(() => currentTabIndex = index),
                  labelPadding: EdgeInsets.only(right: 30),
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  controller: tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black26,
                  labelStyle: TextStyle(fontSize: 18, fontFamily: "Gilroy"),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 15, fontFamily: "Gilroy"),
                  tabs: [
                    Tab(
                      text: "top"
                    ),
                    Tab(text: "AI Recommends"),
                  ]),     
    );
  }
}