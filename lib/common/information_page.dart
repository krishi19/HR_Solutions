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
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 15, 182, 0),
              child: Text('Upcoming Events', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
            ),
            Image.asset(
              'assets/icons/meeting.png'
            ),
            Container(
              height: 200.h,
              width: 390.w,
              color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: Text('Edge enim dictum risus augue', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                      child: Text('Date: 8/16/2022', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
                   

                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 5, 40, 0),
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, odio a consectetur sit tristique felis proin tristique nullam. Porttitor lobortis venenatis lorem risus, ultrices. Lacus integer enim gravida egestas id nisl sit.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                    )
                  ],
                ),
                
               
              ),
            
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 15, 199, 0),
                child: Text('Popular Articles', style: TextStyle(fontSize: 20,fontWeight:  FontWeight.w600),),
              ), 
              SizedBox(height: 10,),
              Container(

                color: Colors.white,
                height: 455.h,
                width: 390.h,
              )
            
                
                   
                   

                                        

                  
                  ,
                
              
                // child: Text('Eget enim dictum risus augue.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ]),
              
            
       
      )
     ) ;
  }
}
