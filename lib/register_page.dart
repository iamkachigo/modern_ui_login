import 'package:flutter/material.dart';
import 'package:modern_ui_login/components/my_button.dart';
import 'package:modern_ui_login/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
   RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Register'),
      ),
      body: Column(
        children: [


          //logo
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                child: Icon(Icons.ac_unit, size: 100),
              ),
            ),
          ),

          SizedBox(height: 25),
          //Firstname textfield
          MyTextfield(
            hintText: 'Full Names',
             controller: usernameController,
              obscureText: false,
               icon: Icons.person,
               ),

 SizedBox(height: 10),
          //username textfield
          MyTextfield(
            hintText: 'Username',
             controller: usernameController,
              obscureText: false,
               icon: Icons.person,
               ),

          SizedBox(height: 10),

          //password textfield
          MyTextfield(
            hintText: 'Password',
             controller: passwordController,
              obscureText: true,
               icon: Icons.lock,
               ),

          SizedBox(height: 10), 

          //confirm password textfield
          MyTextfield(
            hintText: 'Confirm Password',
             controller: passwordController,
              obscureText: true,
               icon: Icons.lock,
               ),

          SizedBox(height: 10),

          //register button
          GestureDetector(
            child: MyButton(
              onTap: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
              text: 'Register',
            ),
          ),

        ]
      )
    );
  }
}
