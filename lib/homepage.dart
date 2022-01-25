import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:internship/pages/getInspiredPage.dart';
import 'package:internship/pages/homeScreen.dart';
import 'package:internship/pages/leaderBoard.dart';
import 'package:internship/pages/progressPage.dart';
import 'package:internship/pages/settingPage.dart';
import 'package:internship/widget/customBottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageindex = 0;
  List _pages = [
    HomeScreen(),
    ProgressPage(),
    LeaderBordPage(),
    GetInspiredPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        bottomNavigationBar: DotNavigationBar(
          currentIndex: _pageindex,
          onTap: (value) {
            setState(() {
              _pageindex = value;
            });
          },
          items: <DotNavigationBarItem>[
            DotNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/img_home.png'))),
            DotNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/img_linechart.png')),
            ),
            DotNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/images/img_leaderboard.png'))),
            DotNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/images/img_proactivity.png'))),
            DotNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/img_settings.png'))),
          ],
        ),
        body: _pages[_pageindex]);
  }
}



//  Container(
//           padding: EdgeInsets.all(8),
//           child: CustomAnimatedBottomBar(
//               selectedIndex: _pageindex,
//               items: <BottomNavyBarItem>[
//                 BottomNavyBarItem(
//                     icon: ImageIcon(AssetImage('assets/images/img_home.png')),
//                     title: Text(
//                       "Home",
//                       style: TextStyle(color: Colors.white),
//                     )),
//                 BottomNavyBarItem(
//                     icon: ImageIcon(
//                         AssetImage('assets/images/img_linechart.png')),
//                     title: Text(
//                       "Progress",
//                       style: TextStyle(color: Colors.white),
//                     )),
//                 BottomNavyBarItem(
//                     icon: ImageIcon(
//                         AssetImage('assets/images/img_leaderboard.png')),
//                     title: Text(
//                       "Leaderboard",
//                       style: TextStyle(color: Colors.white),
//                     )),
//                 BottomNavyBarItem(
//                     icon: ImageIcon(
//                         AssetImage('assets/images/img_proactivity.png')),
//                     title: Text(
//                       "Get Inspired",
//                       style: TextStyle(color: Colors.white),
//                     )),
//                 BottomNavyBarItem(
//                     icon:
//                         ImageIcon(AssetImage('assets/images/img_settings.png')),
//                     title: Text(
//                       "Setting",
//                       style: TextStyle(color: Colors.white),
//                     )),
//               ],
//               onItemSelected: (value) {
//                 setState(() {
//                   _pageindex = value;
//                 });
//               }),
//         ),