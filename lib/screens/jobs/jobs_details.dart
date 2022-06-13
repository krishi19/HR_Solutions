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
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 34),
                child: Column(children: [
                  Container(
                      height: 463,
                      width: 330,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('assets/icons/cross.png'),
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 12,
                                          color: Colors.grey,
                                          offset: Offset(2, 2),
                                          spreadRadius: 2,
                                        ),
                                      ]),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/logo 1.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Image.asset('assets/icons/more_vert.png')
                              ],
                            ),
                          ),
                          Column(children: [
                            RichText(
                                textAlign: TextAlign.justify,
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: 'Creatu Developers \n',
                                      style: TextStyle(
                                          // height: 2,
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: 'Tinkune. koteshwor\n',
                                      style: TextStyle(
                                          // height: 2,
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                ])),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: RichText(
                                      textAlign: TextAlign.start,
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'UX/UI Designer- Top level\n',
                                            style: TextStyle(
                                                // height: 2,
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600)),
                                      ])),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/icons/Employeementicon.png'),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text('Full Time',
                                      style: TextStyle(
                                          // height: 2,
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/icons/JobLevelIcon.png'),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text('Top Level',
                                      style: TextStyle(
                                          // height: 2,
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/icons/negotiable.png'),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text('Negotiable',
                                      style: TextStyle(
                                          // height: 2,
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset('assets/icons/medium.png'),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text('Medium Company',
                                      style: TextStyle(
                                          // height: 2,
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400))
                                ],
                              ),
                            ),
                            // ListTile(
                            //   leading: Image.asset(
                            //       'assets/icons/Employeementicon.png'),
                            //   title: Text('Full Time'),
                            // ),
                            // ListTile(
                            //   leading: Image.asset(
                            //       'assets/icons/Employeementicon.png'),
                            //   title: Text('Full Time'),
                            // ),
                            // ListTile(
                            //   leading: Image.asset(
                            //       'assets/icons/Employeementicon.png'),
                            //   title: Text('Full Time'),
                            // ),
                            // ListTile(
                            //   leading: Image.asset(
                            //       'assets/icons/Employeementicon.png'),
                            //   title: Text('Full Time'),
                            // ),
                            SizedBox(
                              height: 12,
                            ),
                            RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: 'Apply Before: 12/6/2022\n',
                                  style: TextStyle(
                                      // height: 2,
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: 'Posted 1 day ago 5 Applicants',
                                  style: TextStyle(
                                      // height: 2,
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            ])),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 156,
                              child: RaisedButton(
                                color: const Color(0xff5969AA),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  'Apply',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ]),
                        ],
                      )),
                ]),
              ),
              Column(
                children:  [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 247, top: 10),
                    child: Text('Job Details' ,   style: TextStyle(
                                        // height: 2,
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                  ), 
                  Container(
                    height: 571.h,
                    width: 330.w,
                   
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                    ),
                    child:    Padding(
                      padding: const EdgeInsets.only(left: 10, top:10, right: 10),
                      child: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Role Overview\n',
                                    style: TextStyle(
                                        // height: 2,
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit neque nisl, ultricies mattis lectus tincidunt egestas eu. Tempus habitant vitae urna, sollicitudin sodales nulla augue. Posuere aenean nam consectetur dolor, nam suspendisse vel. Tellus, pretium, pulvinar habitasse ornare id fermentum justo at ipsum. Risus a, sit aliquet eu dolor id augue vestibulum. ',
                                    style: TextStyle(
                                        // height: 2,
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                          TextSpan(
                                    text: 'Duties and Responsibilities\n',
                                    style: TextStyle(
                                        height: 1.5,
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                                         TextSpan(
                                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit neque nisl, ultricies mattis lectus tincidunt egestas eu. Tempus habitant vitae urna, sollicitudin sodales nulla augue. Posuere aenean nam consectetur dolor, nam suspendisse vel. Tellus, pretium, pulvinar habitasse ornare id fermentum justo at ipsum. Risus a, sit aliquet eu dolor id augue vestibulum. ',
                                    style: TextStyle(
                                        // height: 2,
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                        TextSpan(
                                    text: 'Duties and Responsibilities\n',
                                    style: TextStyle(
                                        height: 1.5,
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)),
                                        TextSpan(
                                    text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mi fringilla morbi tristique nec arcu. Vestibulum quam elementum feugiat eu sit. Mattis pretium sollicitudin tristique sapien massa. Magna tincidunt enim vestibulum amet dignissim. Euismod morbi tristique nunc etiam malesuada pharetra, auctor quisque diam. Tempor enim, at ac felis, egestas adipiscing. Volutpat molestie pharetra, non tristique enim, mi. Id ipsum in vitae orci venenatis vel in nisi. Integer mattis tellus dignissim mattis pretium. In arcu sit rutrum aenean amet. At.',
                                    style: TextStyle(
                                        // height: 2,
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),


                              ])),
                    ),
                  ), 
                ],
              ),
                Column(
                children:   [
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 247, top: 10),
                    child: Text('Similar Jobs' ,   style: TextStyle(
                                        // height: 2,
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                  ), 
                 Container(
                                 height: 403.h,
                                 color: Colors.white,
                                 child: ListView.separated(itemBuilder: ((context, index) => 
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.start, children: [
                                   
                                   Column(children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
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
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Backend Developer\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                          TextSpan(
                              text: 'Hands Company\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: 'Handiland, kathmandu\n',
                              style: TextStyle(
                                  color: Color(0xff6A6A6A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          TextSpan(
                              text: 'Posted 5hrs ago  10Applicants\n',
                              style: TextStyle(
                                  height: 1.3,
                                  color: Color(0xff6A6A6A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ]),
                      )
                    ],
                                   ),
                                   
                                   Column(
                    
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Icon(Icons.favorite_border_outlined),
                      )
                    ],
                                   )
                                 ])), separatorBuilder: (context, index) =>const Divider(
                    thickness: 2, 
                    indent: 30, 
                    endIndent: 30, 
                    color: Color(0xff202C7B), 
                    height: 10
                    ), itemCount:3),
                               ), 
            ],
          ),
        ])));
  }
}
