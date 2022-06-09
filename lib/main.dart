import 'package:flutter/material.dart';
import 'package:hr_solutions/screens/accounts/account_settings.dart';
import 'package:hr_solutions/screens/article_page.dart';
import 'package:hr_solutions/screens/information_page.dart';
import 'package:hr_solutions/screens/auth/login.dart';
import 'package:hr_solutions/screens/jobs/job_applied.dart';
import 'package:hr_solutions/screens/jobs/jobs_details.dart';
import 'package:hr_solutions/screens/jobs/saved_jobs.dart';
import 'package:hr_solutions/screens/notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/blogs_page.dart';
import 'screens/screening_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        // home: const JobsPage()
        home: SettingsPage(),
      ),
    );
  }
}
