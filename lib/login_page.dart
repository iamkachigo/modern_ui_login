// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:modern_ui_login/components/my_button.dart';
import 'package:modern_ui_login/components/my_textfield.dart';
import 'package:modern_ui_login/components/squre_tile.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser() {}

   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              //logo
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(
                height: 50,
              ),
              //welcome back you have been missed
              Text(
                "Welcome back you\'ve been missed",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              //usernameTextfield

              MyTextfield(
                hintText: "Username",
                obscureText: false,
                controller: usernameController,
                icon: Icons.person,
              ),
              SizedBox(
                height: 20,
              ),
              //passwordTextfield
              MyTextfield(
                hintText: "Password",
                obscureText: true,
                controller: passwordController,
                icon: Icons.lock,
              ),
              SizedBox(
                height: 20,
              ),
              //forgot password
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                   child: Text('Forgot Password',),
                 ),
               ],
             ),
              SizedBox(
                height: 20,
              ),

              //sign in button
              MyButton(
                onTap: () {
                  loginUser();
                }, text: 'Sign in',
              ),

              // or continue with

              SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member ?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/registerpage');
                    },
                    child: Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),

              //google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SqureTile(imagePath: 'assets/images/google.png'),
                SizedBox(width: 25),

                SqureTile(imagePath: 'assets/images/apple.png'),
              ],)

              // or not a member ?register now
            ],
          ),
        ),
      ),
    );
  }
}
