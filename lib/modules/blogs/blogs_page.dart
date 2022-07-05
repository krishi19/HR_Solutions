import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Blogs',
        style: TextStyle(fontSize: 30, color: Color(0xff202C7B)),
      ),
    ),
     backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
            child: Column(children:  [
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 15, 234, 10),
            child: Text(
              'New Articles',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
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
              itemCount: 3,
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Divider(color: Color(0xff202C7B), height: 10),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 15, 253, 10),
            child: Text('All Articles', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
          ),
            Container(
                  height: 40,
                  width: 330,
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 30.0),
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
                               
                          ),
                          
                        ),
            )])),
             const SizedBox(
              height: 10,
            ),
              Container(
            height: 745.h,
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
            ]
          ), 
          
          )
          );
  }
}
