// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hr_solutions/screens/auth/login.dart';
import 'package:hr_solutions/screens/jobs/jobs_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  'Join Us',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff202C7B)),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Sign up as a member',
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
                  height: 10,
                ),
                Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 201, 0),
                      child: Text(
                        'Create Password',
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
                            hintText: 'Create a Password'),
                      ),
                    ),
                  ),
                ),
            const     SizedBox(
                  height: 10,
                ),
               
                 Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 190, 0),
                      child: Text(
                        'Confirm Password',
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
                            hintText: 'Confirm your Password'),
                      ),
                    ),
                  ),
                ),
              const  SizedBox(
                  height: 10,
                ),
                 GestureDetector(
                
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: 'By signing up, you are agreeing to the \n',
                        style: TextStyle(
                          color: Color(0xff676767),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        )
                          ),
                          TextSpan(
                            text: 'Terms and Conditions',
                            style: TextStyle(
                              color: Color(0xff202C7B),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                            )
                          ),
                           TextSpan(
                              text: 'and',
                        style: TextStyle(
                          color: Color(0xff676767),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        )
                          ),
                          TextSpan(
                            text: 'Privacy Policy.',
                            style: TextStyle(
                              color: Color(0xff202C7B),
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                            )
                          ),
                        ]
                      
                      ) ,
                      ),
                  ),
                ),
               
              const  SizedBox(
                  height: 15,
                ),
               
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 40.0),
                 width: double.infinity,
                 child: RaisedButton(
                   onPressed:() {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginPage()));
                  },
                   padding: const EdgeInsets.all(15.0),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0)),
                     color: const Color(0xff202C7B),
                     child: const Text('Sign Up',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 16,
                       fontWeight: FontWeight.w600,
                     ),),
        
                   ),
                  // ignore: avoid_print
                
                 ),
                 Container(),
                 
                 const SizedBox(
                   height: 58,
                 ),
                GestureDetector(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => const  JobsPage()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: 'Already a member?',
                      style: TextStyle(
                        color: Color(0xff676767),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      )
                        ),
                        TextSpan(
                          text: 'Login',
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