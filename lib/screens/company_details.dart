// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompnayDetailsPage extends StatefulWidget {
  const CompnayDetailsPage({Key? key}) : super(key: key);

  @override
  State<CompnayDetailsPage> createState() => _CompnayDetailsPageState();
}

class _CompnayDetailsPageState extends State<CompnayDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 34),
              child: Column(children: [
                Container(
                    height: 383.h,
                    width: 330,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(children: [
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Information Technology',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
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
                                  Image.asset('assets/icons/Employee.png'),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('92 Employee',
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
                        SizedBox(
                          height: 9,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset('assets/icons/Website.png'),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('www.creatudevelopers.com',
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
                                  Image.asset('assets/icons/Phone.png'),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('+977 9831425678',
                                  style: TextStyle(
                                      // height: 2,
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                        ),
                      ]),

                    ]))
              ])),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10, right: 157),
                    child: Text('About the Company', style: TextStyle(
                                          // height: 2,
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                          
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 308.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque rhoncus orci vel massa est. Tincidunt sed massa velit sagittis, leo, id lorem enim nisl. Risus lacus mattis orci, quis diam. Ut venenatis, natoque hac arcu porttitor at risus facilisi. Tristique aliquam aliquet aliquet sed curabitur platea sed hac faucibus. Amet commodo commodo nam ante egestas. Nisi, cras massa non pellentesque donec. Mattis ut ultrices ipsum, laoreet. Fusce massa porta justo magna eget risus ut.',
                      style: TextStyle(
                        
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                  )
                ],
              ),
               Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10, right: 157),
                    child: Text('Current Job Opening', style: TextStyle(
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
                ]
               ),
                Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10, right: 157),
                    child: Text('Similar Companies', style: TextStyle(
                                          // height: 2,
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                          
                  ),
                   Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                    height: 240,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                              width: 190.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Image.asset('assets/icons/like.png'),
                                  ),
                                  Positioned(
                                    top: 15,
                                    left: 64,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30,
                                      child: Image.asset(
                                          'assets/icons/logo 1.png'),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 84),
                                    child: Column(children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: const TextSpan(children: [
                                            TextSpan(
                                                text: 'Front End Developer\n',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            TextSpan(
                                                text: 'Creatu Developers\n',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text:
                                                    'Tinkune, Koteshwor, Kathmandu\n',
                                                style: TextStyle(
                                                    color: Color(0xff6A6A6A),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: 'Posted 5hrs ago',
                                                style: TextStyle(
                                                    height:
                                                        2, // the height between text, default is 1.0

                                                    color: Color(0xff6A6A6A),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ]),
                                        ),
                                      ),

                                      SizedBox(
                                        width: 130,
                                        child: RaisedButton(
                                          color: const Color(0xff202C7B),
                                          onPressed: () {},
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Text(
                                            'View Details',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                      //  ),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10),
                        itemCount: 4)),
                )]
                )

        ])));
  }
}
