// import 'package:flutter/material.dart';

// class BottomNavPage extends StatefulWidget {
//   const BottomNavPage({Key? key}) : super(key: key);

//   @override
//   State<BottomNavPage> createState() => _BottomNavPageState();
// }

// class _BottomNavPageState extends State<BottomNavPage> {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.call),
//           label: 'Calls',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.camera),
//           label: 'Camera',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.chat),
//           label: 'Chats',
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hr_solutions/screens/cv/cv_page.dart';
import 'package:hr_solutions/screens/information_page.dart';
import 'package:hr_solutions/screens/jobs/jobs_details.dart';
import 'package:hr_solutions/screens/notifications.dart';
import 'package:hr_solutions/screens/screening_test.dart';

import '../screens/cv/profile_page.dart';
import '../screens/jobs/jobs_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int currentIndex = 0;
  final screens = [
    const JobsPage(),
    const InformationPage(),
    const NotificationPage(),
   
 
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: currentIndex,
      //   children: screens,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: const Color(0xff5969AA),
        unselectedItemColor: const Color(0xff5969AA),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.cases_rounded),
          
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            label: 'Info',
            icon: Icon(Icons.info),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: screens.elementAt(currentIndex),
    );
  }
}