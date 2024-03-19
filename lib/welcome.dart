import 'package:firebase/Login.dart';
import 'package:firebase/signup.dart';
import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),"WELCOME"),
            SizedBox(height: 25),
            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),"-_-_-_-_-_-_-_-_-_-"),
            Image.network('data:image/png;base64,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'),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
            }, child: Text(style: TextStyle(color: Colors.blue,fontSize: 20),'Login')),
            SizedBox(height: 30),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
            }, child: Text(style: TextStyle(color: Colors.white,fontSize: 20),'Signup')),
          ],
        ),
      ),
    );
  }
}
