import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:hack/widget/bargraph1.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      
      body:Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/img1.png"),
          fit: BoxFit.fill)),
          child: GlassContainer.clearGlass(
            height: MediaQuery.of(context).size.height-90,
            width: MediaQuery.of(context).size.width-20,
            child: Container(
              padding: EdgeInsets.only(top: 40,left: 10,right: 10),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                   const Text("Hello how are you krish!?",
                    style: TextStyle(color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                      ),
                      const Text("How was your day to day!!",
                    style: TextStyle(color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40,),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(0.8)),
                        height: 75,width: 300,
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("You have completed \n1 of 3 task's today",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13),),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 40),
                          width: 70,
                          height: 50,
                          color: Colors.transparent,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [

                              Text("33%",style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,),
                              PieChart(
                              
                              PieChartData(
                                centerSpaceRadius: 25,
                                sectionsSpace: 0,
                                sections: [
                              PieChartSectionData(
                        
                                radius: 10,
                                value: 33,
                                color: Color.fromARGB(255, 115, 4, 195),
                                title: ""
                              ),
                              PieChartSectionData(
                                radius: 9,
                                value: 67,
                                color: Color.fromARGB(255, 115, 4, 195).withOpacity(0.3),
                                title: ""
                              ),
                              
                              ])),
                              ]
                          ),
                        ),
                      ]),),
                      SizedBox(height: 40,),
                      Container(
                        decoration: BoxDecoration(color: Colors.purpleAccent.shade700.withOpacity(0.6),borderRadius: BorderRadius.circular(30) )
                        , child: BarChartSample1()),

                ],
              ),
            ),
          ),
      )

    ));
  }
}