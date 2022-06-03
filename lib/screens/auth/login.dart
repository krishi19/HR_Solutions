// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hr_solutions/screens/auth/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
                child: Column(
              children: [
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 87,
                ),
                const Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff202C7B)),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Log in to your account',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff202C7B)),
                ),
                const SizedBox(
                  height: 67,
                ),
                Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 224, 0),
                      child: Text(
                        'Email Address',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff202C7B)),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Padding(
                      padding: EdgeInsets.only(left:10),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your Email address'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 260, 0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff202C7B)),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Padding(
                      padding: EdgeInsets.only(left:10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your Password'),
                      ),
                    ),
                  ),
                ),
               
                // Container(alignment: Alignment.centerRight,
                // child: 
                   
                  
                //   ),
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(onPressed: () => print('Forgot Password Button Pressed'), 
                  padding: const EdgeInsets.only(right: 44.0),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)
                  )),
                ),
                const SizedBox(
                  height: 11,
                ),
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 40.0),
                 width: double.infinity,
                 child: RaisedButton(
                   onPressed:() =>print('Login Button Pressed'),
                   padding: const EdgeInsets.all(15.0),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0)),
                     color: const Color(0xff202C7B),
                     child: const Text('Log in',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 16,
                       fontWeight: FontWeight.w600,
                     ),),
        
                   ),
                  // ignore: avoid_print
                
                 ),
                 const SizedBox(
                   height: 161,
                 ),
                GestureDetector(
                 
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => const RegisterPage()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Not a member?',
                      style: TextStyle(
                        color: Color(0xff676767),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      )
                        ),
                        TextSpan(
                          text: 'Register Now',
                          style: TextStyle(
                            color: Color(0xff202C7B),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                          )
                        )
                      ]
                    
                    ) ,
                    ),
                )
              ] )
          
              
            )),
        ),
        );
  }
}
