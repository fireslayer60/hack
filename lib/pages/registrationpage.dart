import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:hack/pages/loginpage.dart';
import 'package:hack/pages/mainpage.dart';



class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        
        body: Stack(
          
          
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/image3.jpg"),fit: BoxFit.fill)),),
            Container(
              decoration: BoxDecoration(color: Color(0xFFEAB2A0),borderRadius: BorderRadius.only(topLeft: Radius.circular(47),topRight: Radius.circular(47))),
              margin: EdgeInsets.only(top: 300),
              width: MediaQuery.of(context).size.width,
              height: 521,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        height: 60,
                        width: 265,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF435B66),
                          border: Border.all(color: Color(0xFF1A9EB0)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '   Email',
                              hintStyle: TextStyle(color: Colors.white),
                              suffixIcon: Icon(Icons.check, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(height: 15),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        height: 60,
                        width: 265,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFF435B66),
                          border: Border.all(color: Color(0xFF1A9EB0)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '   Password',
                              hintStyle: TextStyle(color: Colors.white),
                              suffixIcon: Icon(Icons.check, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  SizedBox(height: 20),
                  Container(
                      height: 60.0,
                      width: 265,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF081827)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextButton(
                          onPressed: ()  {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign Up',
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
                  SizedBox(
                      height: 20,
                    ),
                    
                    Container(
                      color: Color(0xFF2D4356),
                      child: SizedBox(
                        height: 2,
                        width: 300,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: ()  {
                        
                      },
                      child: Image(
                        image: AssetImage("images/google.png"),
                        height: 40,
                        width: 40,
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Color(0xFF4C2C2D)),
                      ),
                      TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));},
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Color(0xFFCA4E12)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}