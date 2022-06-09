// ignore_for_file: deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Container(
              height: 130,
              width: 390,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/article_background.png'),
                      fit: BoxFit.cover)),
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 14, 0, 0),
                          child: Container(
                              color: Colors.white,
                              child:
                                  Image.asset('assets/icons/back_button.png')),
                        )
                      ],
                    ),
                  ])),
        ),
        Container(
          height: 72,
          width: 330,
          child: Text(
            'Eget enim dictum risus \n augue.',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 40),
          child: Column(
            children: [
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit turpis cras lacus sit lectus. Faucibus bibendum urna turpis id aliquet adipiscing. A, nisi, ornare gravida eget. Ultrices velit id habitant lobortis in purus dolor risus. Elit sit iaculis elementum odio gravida tortor, at. Integer accumsan amet volutpat curabitur. Blandit vestibulum sed laoreet eget.Turpis nisl nullam dignissim tincidunt eu sit. Lobortis purus ultrices mattis neque eget sed. Nullam fermentum etiam tellus platea cras turpis viverra integer erat. Eu leo a sit at turpis facilisis non. Id diam et in pretium odio faucibus at.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 5,
              ),
              Image.asset('assets/icons/article_clap.png'),
              SizedBox(
                height: 5,
              ),
              const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit turpis cras lacus sit lectus. Faucibus bibendum urna turpis id aliquet adipiscing. A, nisi, ornare gravida eget. Ultrices velit id habitant lobortis in purus dolor risus. Elit sit iaculis elementum odio gravida tortor, at. Integer accumsan amet volutpat curabitur. Blandit vestibulum sed laoreet eget.Turpis nisl nullam dignissim tincidunt eu sit. Lobortis purus ultrices mattis neque eget sed. Nullam fermentum etiam tellus platea cras turpis viverra integer erat. Eu leo a sit at turpis facilisis non. Id diam et in pretium odio faucibus at.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top:10, bottom: 10),
          child: Divider(thickness: 2, color: Color(0xff202C7B), height: 10),
        ), 
        const Padding(
          padding: EdgeInsets.only(left: 30, right: 200),
          child: Text('Related Articles',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600), ),
        ),
       const SizedBox(
          height: 10,
        ),
        Container(
            height: 445.h,
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
        const   Divider(color: Color(0xff202C7B), height: 10, 
        indent: 30,
        endIndent: 30,
        ),
      ]),
      
    ));
  }
}
        
        // body: Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(top: 25),
        //       child: Container(
        //         height: 130,
        //         width: 390,
        //         decoration: const BoxDecoration(
        //             image: DecorationImage(
        //                 image: AssetImage('assets/icons/article_background.png'),
        //                 fit: BoxFit.cover)),
        //         child:
        //             new Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        //           Row(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(35, 14, 0, 0),
        //                 child: Container(
        //                     color: Colors.white,
        //                     child: Image.asset('assets/icons/back_button.png')),
        //               )
        //             ],
        //           ),
        //          Column(
        //            children: [
        //              Text('hello')
        //            ],

        //           )

        //         ]),

        //       ),

        //     ),
        //   ],
        // ),
      
