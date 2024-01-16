import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hack/pages/Journal.dart';
import 'package:hack/pages/mainpage.dart';
import 'package:hack/pages/sentiment.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {


  int _selectedIndex = 2;
   List<Widget> yoo = [Text("l"),JournalPage(), HomePage(),Text("bruv"),SentimentPage() ];
  

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: yoo[_selectedIndex],
      
      bottomNavigationBar: GNav(
      onTabChange: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
      selectedIndex: _selectedIndex,
      color: Color(0xFF081827),
      backgroundColor: Color(0xFF081827),
      activeColor: Color(0xFF081827),
      tabBackgroundColor: Color(0xFFEAB2A0),
      tabMargin: EdgeInsets.all(4),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      
      gap: 7,
      iconSize: 25,
      tabs: [
      
      GButton(text:"Notes",
      textStyle: TextStyle(color: Colors.white),
        iconColor: Colors.white,
        icon: Icons.note_outlined,
        
        
        ),
      GButton(icon: Icons.emoji_emotions_outlined,
      iconColor: Colors.white,
              text: "Rate",
              ),
      GButton(text: "Home",
      iconColor: Colors.white,
        icon: Icons.home_outlined,
              ),
      GButton(text:"Reminders",
      iconColor: Colors.white,
        icon: Icons.alarm_outlined),
      GButton(text:"Journal",
      iconColor: Colors.white,
        icon: Icons.book_outlined)
    
    
    
    ]),));
  }
}