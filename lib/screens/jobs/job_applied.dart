// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({Key? key}) : super(key: key);

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'My Applications',
            style: TextStyle(fontSize: 26, color: Color(0xff202C7B)),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          const Padding(
              padding: EdgeInsets.fromLTRB(30, 15, 233, 0),
              child: Text(
                'Sort By: Date',
                style: TextStyle(
                    color: Color(0xff5969AA),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )),
          const Divider(thickness: 1, color: Color(0xff202C7B), height: 10),
          Container(
            height: 568.h,
            color: Colors.white,
            child: ListView.separated(
                itemBuilder: ((context, index) => SizedBox(
                      height: 142.h,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30, top: 10),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: SizedBox(
                                      height: 64,
                                      width: 64,
                                      child: Image.asset(
                                        'assets/icons/backend.png',
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              //  Container(
                              //    height: 60.h,
                              //    width :60.h,
                              //    decoration: const BoxDecoration(
                              //      shape: BoxShape.circle,
                              //      image: DecorationImage(image: AssetImage('assets/icons/backend.png'),fit: BoxFit.cover)
                              //    ),
                              //  )
                            ]),
                            const SizedBox(
                              width: 7,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: RichText(
                                    text: const TextSpan(children: [
                                      TextSpan(
                                          text: 'Backend Developer\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: 'Company:',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: 'Hands Company \n',
                                          style: TextStyle(
                                              color: Color(0xff6A6A6A),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: 'Applied Date :',
                                          style: TextStyle(
                                              height: 1.3,
                                              color: Color(0xff6A6A6A),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: '2/1/2022\n',
                                          style: TextStyle(
                                              height: 1.3,
                                              color: Color(0xff6A6A6A),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400)),
                                    ]),
                                  ),
                                ),
                                SizedBox(
                                  width: 156,
                                  height: 28,
                                  child: RaisedButton(
                                    color: const Color(0xff5969AA),
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Text(
                                      'View Application',
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ]),
                    )),
                separatorBuilder: (context, index) => const Divider(
                    thickness: 1, color: Color(0xff202C7B), height: 10),
                itemCount: 4),
          ),
          const Divider(thickness: 1, color: Color(0xff202C7B), height: 10),
        ])));
  }
}