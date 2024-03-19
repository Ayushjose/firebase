import 'package:firebase/signup.dart';
import 'package:firebase/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),'Login'),
            SizedBox(height: 15),
            Text('Login to your account'),
            SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                hintText: 'Username',
              ),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 40),
            SizedBox(height: 50,width:250,
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),onPressed: null, child: Text(style: TextStyle(color: Colors.white,fontSize: 20),'Login')),
            ),
            SizedBox(height:15),
            RichText(text: TextSpan(text: 'Dont have an account?SignUp',recognizer: TapGestureRecognizer
              ()..onTap=()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const Signup()))),
            ),
            SizedBox(height: 20),
            Image.network('data:image/png;base64,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'),
            SizedBox(height: 30),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Welcome()));
            }, child: Text(style: TextStyle(color: Colors.white,fontSize: 20),'HomePage')),
          ],

        ),
      ),
    );
  }
}
