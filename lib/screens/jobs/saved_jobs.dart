import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedJobsPage extends StatefulWidget {
  const SavedJobsPage({Key? key}) : super(key: key);

  @override
  State<SavedJobsPage> createState() => _SavedJobsPageState();
}

class _SavedJobsPageState extends State<SavedJobsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Saved Jobs',
            style: TextStyle(fontSize: 30, color: Color(0xff202C7B)),
          ),
        ),
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            primary: false,
            child: Column(children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 524.h,
                color: Colors.white,
                child: ListView.separated(
                    itemBuilder: ((context, index) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 30,
                                    child:
                                        Image.asset('assets/icons/logo 1.png'),
                                  ),
                                ),
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
                                            text:
                                                'Posted 5hrs ago  10Applicants\n',
                                            style: TextStyle(
                                                height: 1.3,
                                                color: Color(0xff6A6A6A),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)),
                                      ]),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 60),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xff202C7B),
                                    ),
                                  )
                                ],
                              )
                            ])),
                    separatorBuilder: (context, index) => const Divider(
                        thickness: 2,
                        indent: 30,
                        endIndent: 30,
                        color: Color(0xff202C7B),
                        height: 10),
                    itemCount: 4),
              ),
            ])));
  }
}
