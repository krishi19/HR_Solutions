// import 'package:flutter/material.dart';
// import 'package:hr_solutions/screens/jobs/search.dart';

// class JobsPage extends StatelessWidget {
//   const JobsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//          centerTitle : true,
//         title: const Text('Jobs' , style: TextStyle(fontSize: 30,color: Color(0xff202C7B)),),
//       ),
//       backgroundColor: const Color(0xffE5E5E5),
//       body: ListView(
//        children: [
//          Container(
//            height: 40,
//            width: 330,
//            padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
//              margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.all(Radius.circular(20.0)),
//           ),
//            child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Expanded(
//                 flex: 1,
//                 child: TextFormField(
//                   autofocus: true,
//                   decoration: const InputDecoration(
//                     fillColor: Colors.white,
//                     border: InputBorder.none,
//                     hintText: "Search Jobs",
//                                         prefixIcon: Icon(Icons.search, color: Color(0xff202C7B)),
//                     suffixIcon : Icon(Icons.tune, color: Color(0xff202C7B))
//                   ),
//                 ),
//               ),
//         ] )
//        ) ,

//       const Padding(
//          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
//          child: Text('Featured Openings',
//          style: TextStyle(fontSize: 20 , color:Colors.black, fontWeight: FontWeight.w600),),
//        ),
//      const  SizedBox(
//          height: 5,
//        ),
//      const  ListTile(

//        )
//        ],
//       )

//     );
//   }
// }

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_solutions/screens/jobs/jobs_for_you.dart';
import 'package:hr_solutions/screens/jobs/search.dart';
import 'package:line_icons/line_icons.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Jobs',
            style: TextStyle(fontSize: 30, color: Color(0xff202C7B)),
          ),
        ),
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            children: [
              Container(
                  height: 40,
                  width: 330,
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 15.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            autofocus: true,
                            decoration: const InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText: "Search Jobs",
                                prefixIcon: Icon(Icons.search,
                                    color: Color(0xff202C7B)),
                                suffixIcon:
                                    Icon(Icons.tune, color: Color(0xff202C7B))),
                          ),
                        ),
                      ])),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 165, 0),
                child: Text(
                  'Featured Openings',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                  height: 144,
                  color: const Color(0xffE1E8F6),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                            child: Text(
                              'Featured Opening',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff202C7B)),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border_outlined,
                                color: Color(0xff202C7B),
                              )),
                        ]),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            child: Image.asset('assets/icons/logo 1.png'),
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Column(
                          children: [
                            RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: 'UX/UI Designer-Top level\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: 'Creatu Developers\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: 'Tinkune, Koteshwor, Kathmandu\n',
                                    style: TextStyle(
                                        color: Color(0xff6A6A6A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: 'Posted 5hrs ago   10 Applicants',
                                    style: TextStyle(
                                        color: Color(0xff6A6A6A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ])),
              const Padding(
                padding: EdgeInsets.only(right: 186),
                child: Text(
                  'Recent Openings',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
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
                                      child:
                                          Image.asset('assets/icons/logo 1.png'),
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
                                                    fontWeight: FontWeight.w600)),
                                            TextSpan(
                                                text: 'Creatu Developers\n',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400)),
                                            TextSpan(
                                                text:
                                                    'Tinkune, Koteshwor, Kathmandu\n',
                                                style: TextStyle(
                                                    color: Color(0xff6A6A6A),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400)),
                                            TextSpan(
                                                text: 'Posted 5hrs ago',
                                                style: TextStyle(
                                                    height:
                                                        2, // the height between text, default is 1.0

                                                    color: Color(0xff6A6A6A),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400)),
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
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                      //  ),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) => SizedBox(width: 10),
                        itemCount: 4)),
              ),
              const SizedBox(
                height: 10,
              ),
             Container(
               padding: const EdgeInsets.only(right: 236),
               child: const Text('Jobs for you', style: TextStyle(
                 fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20
               ),),

             ), 
             SizedBox(
               height: 5,
             ),
              Row(
                children: [
                  Column(
                    children: [],
                  )
                ],
              )
           
            ],
          ),
          
        ));
  }
}
