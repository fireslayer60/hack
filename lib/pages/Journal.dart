import 'package:emoji_rating_bar/emoji_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:hack/resources/constant.dart';
import 'package:hack/widget/animatedbut.dart';
import 'package:intl/intl.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  int selectedButtonIndex = modd[DateFormat('EEEE').format(DateTime.now())]!.toInt()-1;
  void onButtonPressed(int index) {
    setState(() {
      selectedButtonIndex = index;
      modd[DateFormat('EEEE').format(DateTime.now())] = selectedButtonIndex.toDouble()+1;
      avgg = (modd["Monday"]!+modd["Tuesday"]!+modd["Wednesday"]!+modd["Thursday"]!+modd["Friday"]!+modd["Saturday"]!+modd["Sunday"]!)/7;

    });
    
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(0xFF081827)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top:20),
          child: Text("Rate your day so far out of 5!!",style: TextStyle(color:Colors.white, fontSize: 20,fontWeight: FontWeight.w500),),
          
        ),
        SizedBox(height: 20,),
       Container(
        height: 400,
        width: 350,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFFEAB2A0)),
         child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Stack(
            alignment: Alignment.center,
            children:[ AnimatedBut(text2: "Awful",index: 0,
                isSelected: selectedButtonIndex == 0,
                onPressed: onButtonPressed,), const Padding(
                  padding:   EdgeInsets.only(left: 150),
                  child: Text("😞",style: TextStyle(fontSize: 25),),
                )]
          ),
          Stack(
            alignment: Alignment.center,
            children: [AnimatedBut(text2: "Kinda Bad",index: 1,
                isSelected: selectedButtonIndex == 1,
                onPressed: onButtonPressed,),const Padding(
                  padding:  EdgeInsets.only(left: 150),
                  child: Text("😟",style: TextStyle(fontSize: 25),),
                )]
          ),
          Stack(
            alignment: Alignment.center,
            children: [AnimatedBut(text2: "Mid",index: 2,
                isSelected: selectedButtonIndex == 2,
                onPressed: onButtonPressed,),const Padding(
                  padding:  EdgeInsets.only(left: 150),
                  child: Text("😐",style: TextStyle(fontSize: 25),),
                )]
          ),
          Stack(
            alignment: Alignment.center,
            children: [AnimatedBut(text2: "Good",index: 3,
                isSelected: selectedButtonIndex == 3,
                onPressed: onButtonPressed,),const Padding(
                  padding:  EdgeInsets.only(left: 150),
                  child: Text("🙂",style: TextStyle(fontSize: 25),),
                )]
          ),
          Stack(
            alignment: Alignment.center,
            children: [AnimatedBut(text2: "Awesome",index: 4,
                isSelected: selectedButtonIndex == 4,
                onPressed: onButtonPressed,),const Padding(
                  padding:  EdgeInsets.only(left: 150),
                  child: Text("😄",style: TextStyle(fontSize: 25),),
                )]
          ),
            
         ],
         )
       ),
       SizedBox(height: 20,),
       
      
      ]),

    ),));
  }
}

