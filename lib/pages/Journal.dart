import 'package:emoji_rating_bar/emoji_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:hack/widget/animatedbut.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  int selectedButtonIndex = -1;
  void onButtonPressed(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/img1.png"),fit: BoxFit.fill)),
      child: GlassContainer.clearGlass(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top:20),
          child: Text("Rate your day so far out of 5!!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          
        ),
        SizedBox(height: 20,),
       Container(
        height: 400,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white.withOpacity(0.5)),
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
            
         ],)
       )

      ]),),

    ),));
  }
}
