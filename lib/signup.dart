import 'package:firebase/Login.dart';
import 'package:firebase/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),'Signup'),
              SizedBox(height: 15),
              Text('Create an account its free'),
              SizedBox(height: 70),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Username',
                ),
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'Confirm Password',
                ),
              ),
              SizedBox(height: 25),
              SizedBox(height: 50,width: 250,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),onPressed: null, child: Text(style: TextStyle(color: Colors.white,fontSize: 20),'Signup')),
              ),
              SizedBox(height: 25),
              RichText(text: TextSpan(text: 'Already have an account?Login',recognizer: TapGestureRecognizer
                ()..onTap=()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const Login()))),
              ),
            SizedBox(height: 30),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Welcome()));
            }, child: Text(style: TextStyle(color: Colors.white,fontSize: 20),'HomePage')),
          ]),
        ),
      ),
    );
  }
}
