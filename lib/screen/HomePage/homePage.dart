// ignore_for_file: file_names

import 'package:devfinder/const/colorConst.dart';
import 'package:devfinder/controller/getStorage.dart';
import 'package:devfinder/screen/Developers/developersPage.dart';
import 'package:devfinder/screen/MyProfile/myprofilepage.dart';
import 'package:devfinder/screen/ProjectsPage/projectsPage.dart';
import 'package:devfinder/widget/containerWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final storage = Get.put(StoreController());
  static const List<Widget> _widgetOptions = <Widget>[
    DevelopersPage(),
    ProjectsPage(),
    MyProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundColorDF(
      appBar: AppBar(
        backgroundColor: HexColor(ColorsConst.grey),
        title: Text(
          widget.title,
          style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        actions: [
          IconButton(
              onPressed: () async {},
              icon: Icon(
                Icons.local_post_office_rounded,
                color: HexColor(ColorsConst.orange),
                size: 30,
              ))
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: const Icon(Icons.people_outline),
                backgroundColor: HexColor(ColorsConst.black)),
            BottomNavigationBarItem(
                label: "",
                icon: const Icon(Icons.code_outlined),
                backgroundColor: HexColor(ColorsConst.black)),
            BottomNavigationBarItem(
                label: "",
                icon: const Icon(Icons.person_outline),
                backgroundColor: HexColor(ColorsConst.black)),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: HexColor(ColorsConst.orange),
          unselectedItemColor: Colors.black,
          selectedFontSize: 0,
          selectedIconTheme:
              IconThemeData(color: HexColor(ColorsConst.orange), size: 30),
          unselectedIconTheme:
              const IconThemeData(color: Colors.white, size: 30),
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5,
          backgroundColor: HexColor(ColorsConst.darkGrey)),
    );
  }
}
