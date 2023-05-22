import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unbit_app/dashboard_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var contact = "assets/Union.svg";
  var wallet = "assets/Subtract.svg";
  var share = "assets/Share fill.svg";
  var profile = "assets/person.svg";
  int _selectedIndex = 0;
  static   final _widgetOptions = <Widget>[
    Dashboard(),
    const Text('Wallet', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Share', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Profile', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        backgroundColor: Colors.white,
        items:     <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon:SvgPicture.asset(contact,color: _selectedIndex==0?Colors.black:Color(0xFF979797),),
              label: "contact",
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(wallet,color: _selectedIndex==1?Colors.black:null,),
              label: 'wallet',
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(share,color: _selectedIndex ==2 ?Colors.black87:null),
            label: 'share',
            backgroundColor:  Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(profile,color: _selectedIndex ==3 ?Colors.black87:null),
            label: 'profile',
            backgroundColor:  Colors.white,
          ),

        ],

        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 20,
        selectedIconTheme: IconThemeData(color: Colors.black),
        onTap: _onItemTapped,

        elevation: 10
    ),
      floatingActionButtonLocation : FloatingActionButtonLocation.centerDocked,
      floatingActionButton:  FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child:  Icon(Icons.add),
        elevation: 4.0,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
