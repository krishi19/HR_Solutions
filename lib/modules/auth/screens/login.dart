// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hr_solutions/common/bottom_navbar.dart';
import 'package:hr_solutions/modules/auth/cubit/auth_cubit.dart';
import 'package:hr_solutions/modules/auth/screens/forgot_password.dart';
import 'package:hr_solutions/modules/auth/screens/register.dart';
import 'package:hr_solutions/screens/jobs/jobs_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (ctx, loginState) {
          if (loginState.userModel != null) {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (ctx) =>BottomNavPage()),
              (route) => false,
            );
          }
        },
        child: SingleChildScrollView(
          child: Builder(builder: (context) {
            return SafeArea(
              child: Form(
                key: formkey,
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
                              filled : true,
                            
                              hintText: 'Enter your Email address',
                            ),
                            validator: (value) {
                              // if (value!.isEmpty) {
                              //   return "Email is required.";
                              // } else {

                              // }
                              final requiredV =
                                  FormBuilderValidators.required()
                                      .call(value);
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
                              hintText: 'Enter your Password',
                            ),
                            controller: passwordController,
                            obscureText: true,
                            validator: (value) {
                              if (value != null) {
                                return FormBuilderValidators.minLength(6)
                                    .call(value);
                              } else {
                                return 'Password is required.';
                              }
                            },
                          ),
                        ),
                      ),

                      // Container(alignment: Alignment.centerRight,
                      // child:

                      //   ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordPage()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(right: 44),
                            child: Text('Forgot Password?',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      RaisedButton(
                        onPressed: () {
                          formkey.currentState!.save();
                          if (formkey.currentState!.validate()) {
                            print('Validated');
                            context.read<AuthCubit>().loginUser(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                          } else {
                            print("Not Validated");
                          }
                          // BlocProvider.of<LoginCubit>(context).add(LoginUserEvent(user: LoginRequestModel(email: 'anita12joc@gmail.com', password: 'Anita123')));
                        },
                        padding: const EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: const Color(0xff202C7B),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 161,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()));
                        },
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: 'Not a member?',
                                style: TextStyle(
                                    color: Color(0xff676767),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'Register Now',
                                style: TextStyle(
                                    color: Color(0xff202C7B),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
