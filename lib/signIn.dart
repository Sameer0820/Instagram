import 'package:flutter/material.dart';
import 'package:instagram/HomePage.dart';
import 'package:instagram/signUp.dart';

void main() => runApp(MaterialApp(title: "Sign In", home: SignIn(), debugShowCheckedModeBanner: false,)); 

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Icon(Icons.arrow_back_ios_outlined),
            Container(
              height: 120,
              padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
              child: Center(child: Image.asset('assets/logo.png')),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: TextField(
                autocorrect: true,
                enableSuggestions: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.redAccent),
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  fillColor: Colors.purple[50],
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 40,
              child: TextField(
                autocorrect: true,
                enableSuggestions: true,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.redAccent),
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  fillColor: Colors.purple[50],
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: new Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {},
                  hoverColor: Colors.pink[100],
                ),
              ],
            ),
            SizedBox(height: 40),
            Center( 
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text('Sign In'),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      height: 1.0,
                      width: MediaQuery.of(context).size.width / 2.6,
                      color: Colors.black),
                ),
                Text("OR"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                      height: 1.0,
                      width: MediaQuery.of(context).size.width / 2.6,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    child: Text("Don't have an account? "),
                  ),
                ),
                InkWell(
                  child: new Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {
                    Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) => Sign()));
                  },
                  hoverColor: Colors.pink[100],
                ),
              ],
            ),
            Expanded(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Divider(height: 10,)
                    )
                    ),
            Expanded(
              child: Align(
                  alignment: FractionalOffset.center,
                  child: Text('Instagram oT Facebook')),
            )
          ],
        ),
      ),
    );
  }
}
