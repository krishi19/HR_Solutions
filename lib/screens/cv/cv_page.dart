// ignore_for_file: deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_solutions/common/edit_cv.dart';
import 'package:hr_solutions/screens/cv/profile_page.dart';

class CVPage extends StatefulWidget {
  const CVPage({Key? key}) : super(key: key);

  @override
  State<CVPage> createState() => _CVPageState();
}

class _CVPageState extends State<CVPage> {
  get itemCount => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder:(context) => const ProfilePage()));
                    },
                     child: Image.asset('assets/icons/back_button.png')),
                ),
                // Image.asset('assets/icons/Profile_pic.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 49),
                  child: CircleAvatar(
                    backgroundColor: Color(0xffE5E5E5),
                    radius: 60,
                    child: Image.asset('assets/icons/Profile_pic.png'),
                  ),
                ),
             IconButton(onPressed: () {
               showModalBottomSheet(
                                      isDismissible: false,
                                      isScrollControlled: true,                                  
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),),),
                                      builder: (BuildContext context) {
                                        return CustomEditCVSheet();
                                      },
                                      context: context,
                                    );
             }, icon: Icon(Icons.more_vert))
              ],
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
                ])),
            Container(
              height: 201,
              width: 390,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                      color: Color(0Xff202C7B),
                      width: 1,
                    ),
                    bottom: BorderSide(
                      color: Color(0xff202C7B),
                      width: 1,
                    )),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'Basic Information\n',
                        style: TextStyle(
                            height: 2,
                            color: Color(0xff5979AA),
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Name:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Wade Warren \n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: 'Mobile Number :',
                        style: TextStyle(
                            height: 1.3,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: '977-98122345678\n',
                        style: TextStyle(
                            height: 1.3,
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: 'Email:',
                        style: TextStyle(
                            height: 1.3,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'WadeWarren@gmail.com\n',
                        style: TextStyle(
                            height: 1.3,
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: 'Address:',
                        style: TextStyle(
                            height: 1.3,
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: '2972 Westheimer RD.Santa Ana Illinois 864686',
                        style: TextStyle(
                            height: 1.3,
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ]),
                ),
              ),
            ),

            Container(
              // height: 544,
              color: Colors.white,

              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 251, top: 10),
                    child: Text(
                      'Experience',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5969AA)),
                    ),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: ((context, index) => index == 3
                          ? Divider()
                          : Padding(
                              padding: const EdgeInsets.only(left: 30, top: 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                          'assets/icons/experience1.png'),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.justify,
                                        text: const TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  'Cras massa eget non quam\n',
                                              style: TextStyle(
                                                  // height: 2,
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600)),
                                          TextSpan(
                                              text: 'Manager',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: ' . ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: 'Full Time\n ',
                                              style: TextStyle(
                                                  height: 0,
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: 'Aug 2021 ',
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: 'Present\n',
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: 'Location ipsum lorem',
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                        ]),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      separatorBuilder: (context, index) => const Divider(
                          thickness: 1, color: Color(0xff202C7B), height: 10),
                      itemCount: 3),
                ],
              ),
            ),

            Container(
              // height: 544,
              color: Colors.white,

              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 251, top: 10),
                    child: Text(
                      'Education',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5969AA)),
                    ),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: ((context, index) => index == 3
                          ? Divider()
                          : Row(
                            children: [
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Cras massa eget non quam\n',
                                          style: TextStyle(
                                              // height: 2,
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600)),
                                      TextSpan(
                                          text:
                                              'Bachelors in lorem ipsum     2020-2024\n',
                                          style: TextStyle(
                                              // height: 2,
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: 'GPA: 4.0',
                                          style: TextStyle(
                                              // height: 2,
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                              ]),
                            ],
                          )),
                      separatorBuilder: (context, index) => const Divider(
                          thickness: 1, color: Color(0xff202C7B), height: 10),
                      itemCount: 3),
                ],
              ),
            ),
              Container(
              // height: 544,
              color: Colors.white,

              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30, right: 251, top: 10),
                    child: Text(
                      'Skill',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5969AA)),
                    ),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: ((context, index) => index == 3
                          ? Divider()
                          : Row(
                            children: [
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'Tellus enim auctor vitae et mi nunc. \n',
                                          style: TextStyle(
                                              // height: 2,
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                    
                                    ]),
                                  ),
                                ),
                              ]),
                            ],
                          )),
                          
                      separatorBuilder: (context, index) => const Divider(
                        indent: 20,
                        endIndent: 20,
                          thickness: 1, color: Color(0xff202C7B), height: 10),
                      itemCount: 3),
                ],
              ),
            ),
            Row(children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(154, 5, 0, 10),
                  child: Text(
                    'Show All',
                    style: TextStyle(
                        fontSize: 16,
                        color:  Color(0xff202C7B),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(width: 6),
                Image(image: AssetImage('assets/icons/downarrow.png')),
              ]),
            // Column(

            //   children: [
            //     const Padding(
            //       padding: EdgeInsets.only(left: 30, right: 258, top: 5),
            //       child: Text(
            //         "Education",
            //         style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.w500,
            //             color: Color(0xff5969AA)),
            //       ),
            //     ),

            //     Row(
            //       children: [
            //         Column(children: [
            //           Padding(
            //             padding: const EdgeInsets.only(left: 40),
            //             child: RichText(
            //               textAlign: TextAlign.justify,
            //               text: const TextSpan(children: [
            //                 TextSpan(
            //                     text: 'Cras massa eget non quam\n',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w600)),
            //                 TextSpan(
            //                     text:
            //                         'Bachelors in lorem ipsum     2020-2024\n',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.w400)),
            //                 TextSpan(
            //                     text: 'GPA: 4.0',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.w400)),
            //               ]),

            //             ),

            //           ),
            //           Divider(),
            //             Padding(
            //             padding: const EdgeInsets.only(left: 40),
            //             child: RichText(
            //               textAlign: TextAlign.justify,
            //               text: const TextSpan(children: [
            //                 TextSpan(
            //                     text: 'Cras massa eget non quam\n',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w600)),
            //                 TextSpan(
            //                     text:
            //                         'Bachelors in lorem ipsum     2020-2024\n',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.w400)),
            //                 TextSpan(
            //                     text: 'GPA: 4.0',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.w400)),
            //               ]),

            //             ),

            //           ),
            //           Divider(
            //             color: Colors.black,
            //           )
            //           ,
            //             Padding(
            //             padding: const EdgeInsets.only(left: 40),
            //             child: RichText(
            //               textAlign: TextAlign.justify,
            //               text: const TextSpan(children: [
            //                 TextSpan(
            //                     text: 'Cras massa eget non quam\n',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 16,
            //                         fontWeight: FontWeight.w600)),
            //                 TextSpan(
            //                     text:
            //                         'Bachelors in lorem ipsum     2020-2024\n',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.w400)),
            //                 TextSpan(
            //                     text: 'GPA: 4.0',
            //                     style: TextStyle(
            //                         // height: 2,
            //                         color: Colors.black,
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.w400)),
            //               ]),

            //             ),

            //           ),

            //         ]),

            //       ],
            //     ),

            // Container(

            //   height: 362.h,
            //   child: ListView.separated(
            //       itemBuilder: ((context, index) =>
            //        Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Padding(
            //               padding:
            //                   const EdgeInsets.only(left: 30, top: 10),
            //               child: Row(
            //                 children: [
            //                   Column(
            //                     children: [
            //                       Image.asset(
            //                           'assets/icons/experience1.png'),
            //                     ],
            //                   ),
            //                   const SizedBox(
            //                     width: 10,
            //                   ),
            //                   Column(
            //                     children: [
            //                       RichText(
            //                         textAlign: TextAlign.justify,
            //                         text: const TextSpan(children: [
            //                           TextSpan(
            //                               text:
            //                                   'Cras massa eget non quam\n',
            //                               style: TextStyle(
            //                                   // height: 2,
            //                                   color: Colors.black,
            //                                   fontSize: 16,
            //                                   fontWeight:
            //                                       FontWeight.w600)),
            //                           TextSpan(
            //                               text: 'Manager',
            //                               style: TextStyle(
            //                                   color: Colors.black,
            //                                   fontSize: 14,
            //                                   fontWeight:
            //                                       FontWeight.w400)),
            //                           TextSpan(
            //                               text: ' . ',
            //                               style: TextStyle(
            //                                   color: Colors.black,
            //                                   fontSize: 14,
            //                                   fontWeight:
            //                                       FontWeight.w400)),
            //                           TextSpan(
            //                               text: 'Full Time\n ',
            //                               style: TextStyle(
            //                                   height: 0,
            //                                   color: Colors.black,
            //                                   fontSize: 14,
            //                                   fontWeight:
            //                                       FontWeight.w400)),
            //                           TextSpan(
            //                               text: 'Aug 2021 ',
            //                               style: TextStyle(
            //                                   height: 1.3,
            //                                   color: Colors.black,
            //                                   fontSize: 14,
            //                                   fontWeight:
            //                                       FontWeight.w400)),
            //                           TextSpan(
            //                               text: 'Present\n',
            //                               style: TextStyle(
            //                                   height: 1.3,
            //                                   color: Colors.black,
            //                                   fontSize: 14,
            //                                   fontWeight:
            //                                       FontWeight.w400)),
            //                           TextSpan(
            //                               text: 'Location ipsum lorem',
            //                               style: TextStyle(
            //                                   height: 1.3,
            //                                   color: Colors.black,
            //                                   fontSize: 14,
            //                                   fontWeight:
            //                                       FontWeight.w400)),
            //                         ]),
            //                       ),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             )
            //           ])),
            //       separatorBuilder: (context, index) => const Divider(
            //           thickness: 1, color: Color(0xff202C7B), height: 10),
            //       itemCount: 3),
            // ),
          ])
        ])));
    //   ),
    // );
  }
}
