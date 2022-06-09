// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class NotificationPage extends StatelessWidget {
//   const NotificationPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: const Text(
//           'Notification',
//           style: TextStyle(fontSize: 30, color: Color(0xff202C7B)),
//         ),
//       ),
//       backgroundColor: const Color(0xffE5E5E5),
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
//             child: Row(children: const <Widget>[
//               Text(
//                 'All Notifications',
//                 style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500),
//               ),
//               SizedBox(width: 6),
//               Image(image: AssetImage('assets/icons/downarrow.png')),
//             ]),
//           ),
//           const SizedBox(
//             height: 2,
//           ),
//         ],
//       ),

//  Row( crossAxisAlignment: CrossAxisAlignment.start,
//        children: [Column(
//          children: [
//             CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 radius: 30,
//                                 child: Image.asset(
//                                     'assets/icons/logo 1.png'),
//                               ),
//                               Column(
//                                 children: [
//                                   Text('Creatu Developers have posted a new job: UX/UI Designer Top Level'),
//                                 ],
//                               )
//          ],
//        )],
//      ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Notification',
          style: TextStyle(fontSize: 30, color: Color(0xff202C7B)),
        ),
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Row(children: const <Widget>[
                Text(
                  'All Notifications',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 6),
                Image(image: AssetImage('assets/icons/downarrow.png')),
              ]),
            ),
            Container(
              height: 544,
              color: Colors.white,
              child: ListView.separated(
                  itemBuilder: ((context, index) => Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top:10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: Image.asset('assets/icons/logo 1.png'),
                                ),
                              ),
                            ]),
                            const SizedBox(
                              width: 7,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:20),
                                  child: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: 'Creatu Developers ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: 'have posted \n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text:
                                              'a new job: Ux/UI designer TopLevel',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:30
                              ),
                              child: Column(
                                children: const [Icon(Icons.more_vert)],
                              ),
                            )
                          ])),
                  separatorBuilder: (context, index) => const Divider(
                      thickness: 1,
                     
                      color: Color(0xff202C7B),
                      height: 10),
                  itemCount: 6),
            ),
          ],
        ),
      ),
    );
  }
}
