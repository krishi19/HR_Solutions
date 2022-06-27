import 'package:flutter/material.dart';
import 'package:hr_solutions/screens/auth/reset_password.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
                child: Column(children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 87,
          ),
          const Text(
            'Forgot Password?',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff202C7B)),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Reset your password',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Color(0xff202C7B)),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff202C7B)),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(12)),
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(border: InputBorder.none, hintText: 'Enter your Email address'),
                ),
              ),
            ),
          ),

          const SizedBox(height: 40),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            width: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordPage()));
              },
              padding: const EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              color: const Color(0xff202C7B),
              child: const Text(
                'Send Reset Request',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            // ignore: avoid_print
          ),
        ]))),
      ),
    );
  }
}
