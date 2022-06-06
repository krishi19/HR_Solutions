import 'package:flutter/material.dart';

class JobsSearchPage extends StatefulWidget {
  const JobsSearchPage({Key? key}) : super(key: key);

  @override
  State<JobsSearchPage> createState() => _JobsSearchPageState();
}

class _JobsSearchPageState extends State<JobsSearchPage> {
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
            child: Column(children: [
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
                padding: EdgeInsets.fromLTRB(30, 0, 236, 0),
                child: Text(
                  'Jobs for you',
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
                   Container(
                                 height: 1058,
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
                    ), itemCount:8),
                               ), 
   ]
   )
   )
    );
  }
}
