import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreeningPage extends StatefulWidget {
  const ScreeningPage({Key? key}) : super(key: key);

  @override
  State<ScreeningPage> createState() => _ScreeningPageState();
}

class _ScreeningPageState extends State<ScreeningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Screening Test',
        style: TextStyle(fontSize: 26, color: Color(0xff202C7B)),
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
                height: 374.h,
                color: Colors.white,
                child: ListView.separated(
                    itemBuilder: ((context, index) => SizedBox(
                      height: 187.h,
                      child: Row(
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
                                              text: 'Digital Marketing Intern\n',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: 'Company:',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: 'ET Viverra Facilisi \n',
                                              style: TextStyle(
                                                  color: Color(0xff6A6A6A),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text:
                                                  'Application Date :',
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: Color(0xff6A6A6A),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                                   TextSpan(
                                              text:
                                                  '2/1/2022\n',
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: Color(0xff6A6A6A),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                                   TextSpan(
                                              text:
                                                  'Screening Date:',
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: Color(0xff6A6A6A),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                                   TextSpan(
                                              text:
                                                  '2/1/2022\n',
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: Color(0xff6A6A6A),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                                   TextSpan(
                                              text:
                                                  'Screening time:',
                                              style: TextStyle(
                                                  height: 1.3,
                                                  color: Color(0xff6A6A6A),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400)),
                                                   TextSpan(
                                              text:
                                                  '01:30PM',
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
                                        child: RaisedButton(
                                          color: const Color(0xff5969AA),
                                          onPressed: () {
                                           
                                          },
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Text(
                                            'Attend Screening',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                                
                               
                              ]),
                    )),
                    separatorBuilder: (context, index) => const Divider(
                        thickness: 2,
                        color: Color(0xff202C7B),
                        height: 10),
                    itemCount: 2),
              ),
              
            ]))
    );
  }
}
