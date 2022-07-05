// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Information',
            style: TextStyle(fontSize: 30, color: Color(0xff202C7B)),
          ),
        ),
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 15, 182, 0),
            child: Text(
              'Upcoming Events',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Image.asset('assets/icons/meeting.png'),
          Container(
            height: 200.h,
            width: 390.w,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  child: Text(
                    'Edge enim dictum risus augue',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text(
                      'Date: 8/16/2022',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 5, 40, 0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, odio a consectetur sit tristique felis proin tristique nullam. Porttitor lobortis venenatis lorem risus, ultrices. Lacus integer enim gravida egestas id nisl sit.',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 15, 199, 0),
            child: Text(
              'Popular Articles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 455.h,
            color: Colors.white,
            child: ListView.separated(
              itemBuilder: ((context, index) => Container(
                    color: Colors.white,
                    // height: 455.h,

                    child: Row(children: [
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 15),
                          child: SizedBox(
                              height: 120.h,
                              width: 120.w,
                              child: Image.asset('assets/icons/articles.png')),
                        ),
                      ]),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          'Morbi ipsum ac iaculis \n sed sit  eget blandit sit.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text:
                                          'Lorem ipsum dolor sit  \n  amet,consectetur\n adipiscing elit. Diam diam.',
                                      style: TextStyle(
                                          height: 1.2,
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400)),
                                ],
                              )),
                        ),
                      ]),
                    ]),

                    // child: Text('Eget enim dictum risus augue.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                  )),
              itemCount: 5,
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Divider(color: Color(0xff202C7B), height: 10),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 130,
            child: RaisedButton(
              color: const Color(0xff5969AA),
              onPressed: () {
                
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: const Text(
                'View All',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ])));
  }
}
