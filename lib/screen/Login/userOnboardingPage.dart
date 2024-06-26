// ignore_for_file: file_names

import 'package:devfinder/const/colorConst.dart';
import 'package:devfinder/screen/Login/loginPage.dart';
import 'package:devfinder/screen/Login/regristration.dart';
import 'package:devfinder/widget/textWidgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UserOnboardingPage extends StatefulWidget {
  const UserOnboardingPage({super.key});

  @override
  State<UserOnboardingPage> createState() => _UserOnboardingPageState();
}

class _UserOnboardingPageState extends State<UserOnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TitleText(
              text: "DevFinder",
              color: ColorsConst.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: Colors.black,
            foregroundColor: HexColor(ColorsConst.white),
            bottom: TabBar(
              unselectedLabelColor: HexColor(ColorsConst.white),
              labelColor: HexColor(ColorsConst.orange),
              tabs: const <Widget>[
                Tab(
                  text: "Log In",
                ),
                Tab(
                  text: "Sign Up",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: LoginPage(),
              ),
              Center(
                child: RegistrationPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
