// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '/screens/login.dart';
import '/screens/register.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            children: [
              // spacing from logo

              SizedBox(
                height: 40,
              ),

              // Logo of SwiftMoni

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.grain_outlined,
                    size: 35,
                    color: Colors.blue[800],
                  ),
                  Text(
                    'SwiftMoni',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // Onboarding image

              Center(
                child: Container(
                  height: 400,
                  width: 400,
                  child: Image.asset('assets/onboarding.png'),
                ),

                // spacing for unboarding image
              ),

              // spacing from onboarding image

              SizedBox(
                height: 20,
              ),

              // Content Text

              Column(
                children: [
                  Text(
                    'Exchange your currencies',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'with ease',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // Spaing From Content Text

              SizedBox(
                height: 20,
              ),

              // Login button

              SizedBox(
                height: 70,
                width: 430,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    //side: BorderSide(width: 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              // spacing from login button

              SizedBox(
                height: 10,
              ),

              // Sign up button

              SizedBox(
                height: 70,
                width: 430,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 2, color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.blue[800]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
