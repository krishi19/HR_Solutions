// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_solutions/screens/cv/cv_page.dart';
import 'package:hr_solutions/screens/jobs/job_applied.dart';

import '../accounts/account_settings.dart';
import '../jobs/saved_jobs.dart';
import '../screening_test.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  get itemCount => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 49, left: 132, right: 132),
              child: CircleAvatar(
                backgroundColor: Color(0xffE5E5E5),
                radius: 60,
                child: Image.asset('assets/icons/Profile_pic.png'),
              ),
            ),
            RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Wade Warren\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'PHP Developer at Disney\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ])),
            Container(
              color: Colors.white,
              width: 390.h,
              height: 365.h,
              child: Column(
                children: [
                  GestureDetector(
                    child: ProfileTile(
                      image: 'assets/icons/CVIcon.png',
                      title: 'Your Cv',
                      onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CVPage()));
                        
                      },
                    ),
                  ),
                  Divider(),
                  ProfileTile(
                    image: 'assets/icons/application.png',
                    title: 'Your Applications',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ApplicationPage()));
                    },
                  ),
                  Divider(),
                  ProfileTile(
                    image: 'assets/icons/savedjobs.png',
                    title: 'Your saved Jobs',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SavedJobsPage()));
                    },
                  ),
                  Divider(),
                  ProfileTile(
                    image: 'assets/icons/screening_test.png',
                    title: 'Screening Test',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreeningPage()));
                    },
                  ),
                  Divider(),
                  ProfileTile(
                    image: 'assets/icons/settings.png',
                    title: 'Account Settings',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsPage()));
                    },
                  ),
                ],
              ),
            ),
//              Container(
//                 height: 301.h,
//                 color: Colors.white,
//                 child: ListView.separated(itemBuilder: ((context, index) =>
//               Container(
//               color: Colors.white,
//               width: 390.h,
//               height: 67.h,
//               child: Column(

//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left:57),
//                     child: ListTile(
//                       leading: Image.asset(
//                         'assets/icons/CVIcon.png'
//                       ),
//                     title: Text('Your CV', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff5969AA)),),
//                     ),
//                   ),

//                 ],
//               ),
//             )
//                 ), separatorBuilder: (context, index) =>const Divider(
//    thickness: 2,
//    indent: 30,
//    endIndent: 30,
//    color: Color(0xff202C7B),
//    height: 10
//  ), itemCount:4),
//               ),

            Column(
              children: [Container()],
            )
          ],
        ),
      ),
    );
    ;
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    required this.image,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String image;
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: ListTile(
        leading: Image.asset(image),
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff5969AA)),
        ),
      ),
    );
  }
}
