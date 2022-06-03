import 'package:flutter/material.dart';

class JobsForYouPage extends StatefulWidget {
  const JobsForYouPage({Key? key}) : super(key: key);

  @override
  State<JobsForYouPage> createState() => _JobsForYouPageState();
}

class _JobsForYouPageState extends State<JobsForYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Jobs for you'),
      ),
    );
  }
}
