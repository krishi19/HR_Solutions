// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobsDetailsPage extends StatefulWidget {
  const JobsDetailsPage({Key? key}) : super(key: key);

  @override
  State<JobsDetailsPage> createState() => _JobsDetailsPageState();
}

class _JobsDetailsPageState extends State<JobsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 463,
                width: 330,
                color: Colors.red,
                child: Text("krishiyana"),
              )
            ],
          ),
        ),
    )
    ;
  }
}
