// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hr_solutions/common/bottom_navbar.dart';
import 'package:hr_solutions/modules/auth/cubit/auth_cubit.dart';
import 'package:hr_solutions/screens/jobs/jobs_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Form(
            key: formkey,
            child: Center(
                child: Column(children: [
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
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter your Email address'),
                    validator: (value) {
                      final requiredV =
                          FormBuilderValidators.required().call(value);
                      if (requiredV == null) {
                        final emailV =
                            FormBuilderValidators.email().call(value);
                        return emailV;
                      } else {
                        return requiredV;
                      }
                    },
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
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Create a Password'),
                    controller: passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value != null) {
                        return FormBuilderValidators.minLength(6).call(value);
                      } else {
                        return 'Password is required.';
                      }
                    },
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
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Confirm a Password'),
                    controller: confirmpasswordController,
                    obscureText: true,
                    validator: (value) {
                      if (value != null) {
                        return FormBuilderValidators.minLength(6).call(value);
                      } else {
                        return 'Password does not matched.';
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: 'By signing up, you are agreeing to the \n',
                          style: TextStyle(
                              color: Color(0xff676767),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(
                              color: Color(0xff202C7B),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: 'and',
                          style: TextStyle(
                              color: Color(0xff676767),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                              color: Color(0xff202C7B),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ]),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () async {
                    formkey.currentState!.save();
                    if (formkey.currentState!.validate()) {
                      print('Validated');
                      await context.read<AuthCubit>().signUpUser(
                          email: emailController.text,
                          password: passwordController.text,
                          confirmPassword: passwordController.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const JobsPage()));
                    } else {
                      print("Not Validated");
                    }
                  },
                  padding: const EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: const Color(0xff202C7B),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                // ignore: avoid_print
              ),

              const SizedBox(
                height: 58,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavPage()));
                },
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'Already a member?',
                        style: TextStyle(
                            color: Color(0xff676767),
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Login',
                        style: TextStyle(
                            color: Color(0xff202C7B),
                            fontSize: 16,
                            fontWeight: FontWeight.bold))
                  ]),
                ),
              )
            ])),
          )),
        ));
  }
}
