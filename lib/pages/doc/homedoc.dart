import 'package:flutter/material.dart';
//import 'mood.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';



class dochome extends StatefulWidget {
  dochome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _dochomeState createState() => _dochomeState();
}

class _dochomeState extends State<dochome> {
  int _selectedIndex = 0;
  final List<Widget>_children = [
    //docpat(),
   // prescpat(),
   // docprofile()
  ];


  void onTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.home,
                size: 30.0,
              ),
              title: Text('1')),
          BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.book,
                size: 30.0,
              ),
              title: Text('2')),
          BottomNavigationBarItem(
              icon: Icon(
                LineAwesomeIcons.male,
                size: 30.0,
              ),
              title: Text('3')),
        ],
        onTap: onTapped,
      ),
    );
  }

}