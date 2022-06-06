

import 'package:flutter/material.dart';
import 'package:hr_solutions/screens/auth/login.dart';
import 'package:hr_solutions/screens/jobs/jobs_page.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
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
                  'Reset password',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff202C7B)),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Reset your account password',
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
                      padding: EdgeInsets.fromLTRB(50, 0, 222, 0),
                      child: Text(
                        'New Password',
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
                            hintText: 'Enter new password'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15
                ),
                 Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50,0, 163, 0),
                      child: Text(
                        'Confirm New Password',
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
                            hintText: 'Re-enter your new Password'),
                      ),
                    ),
                  ),
                ),
                
              const  SizedBox(
                  height: 40
                ),
               
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 40.0),
                 width: double.infinity,
                 child: RaisedButton(
                   onPressed:() {
                    // Navigator.push(context, MaterialPageRoute(builder:(context) => const R()));
                  },
                   padding: const EdgeInsets.all(15.0),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0)),
                     color: const Color(0xff202C7B),
                     child: const Text('Reset Password',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 16,
                       fontWeight: FontWeight.w600,
                     ),),
        
                   ),
                  // ignore: avoid_print
                
                 ),
              
                 
                 
              ] )
          
              
            )),
        ),
        );
  }
}