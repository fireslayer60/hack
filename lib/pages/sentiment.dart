import 'package:flutter/material.dart';
import 'package:hack/brain/sentiApi.dart';
import 'package:hack/resources/constant.dart';

class SentimentPage extends StatefulWidget {
  const SentimentPage({super.key});

  @override
  State<SentimentPage> createState() => _SentimentPageState();
}

class _SentimentPageState extends State<SentimentPage> {
  final TextEditingController textcontroller =  TextEditingController();
  var data;
  String avggg = avgg.toStringAsFixed(2);
  String senti = "Press submit";
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor: Color(0xFF081827),
    resizeToAvoidBottomInset: false,
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
              height: 500,
              width: 350,
              decoration: BoxDecoration(color: Color(0xFFEAB2A0),borderRadius: BorderRadius.circular(10)),
              child: Column(children: [Text("Type out what do you \n    feel about today",style: TextStyle(fontSize: 18,color: Colors.black),),
              SizedBox(height: 20,),
              
              
              TextFormField(
                controller: textcontroller,
                minLines: 5,
                maxLines: 10,
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 10,style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter your feelings here...."),
                  
                  keyboardType: TextInputType.multiline,


                  ),
                  SizedBox(height: 20,),
                  Container(
                      height: 60.0,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF081827)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextButton(
                          onPressed: () async {
                            data = await SentiApi().getsenti(textcontroller.text);
                            print(data['Sentiment']);
                            setState(() {
                              senti = "You are feeling "+data['Sentiment'];
                            });
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                  ),
                  SizedBox(height: 20,),
                  Text(senti,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
                  SizedBox(height: 20,),
                  Text("Your average mood value is $avggg",style:TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500))
              
              ]),
             ),
        ],
      ),
    ),
    ));
  }
}