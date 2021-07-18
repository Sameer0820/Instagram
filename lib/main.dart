import 'package:flutter/material.dart';
import 'package:instagram/signIn.dart';
import 'package:instagram/signUp.dart';
 
void main() => runApp(MaterialApp(title: "First Page", home: Home(), debugShowCheckedModeBanner: false,));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( 
        children: [
          Container( 
            height: 400,
            child: Center(child: Image.asset('assets/logo.png')),
            width: 250,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: Text('Log in'),
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Sign()));
                },
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
