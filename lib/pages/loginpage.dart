import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:hack/pages/mainpage.dart';
import 'package:hack/pages/registrationpage.dart';



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/img1.png"),fit: BoxFit.fill)),
          child: GlassContainer.clearGlass(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/img0.jpeg',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Emotion Tracker',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 115, 4, 195),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Color(0xFF76453B)),
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Color(0xFF76453B)),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    style: TextStyle(color: Color(0xFF4C2C2D)),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Color(0xFF4C2C2D)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color.fromARGB(255, 115, 4, 195)),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Color.fromARGB(255, 115, 4, 195)),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Color(0xFF4C2C2D)),
                    ),
                    TextButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Color(0xFFCA4E12)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}