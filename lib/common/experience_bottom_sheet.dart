import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomExperienceBottomSheet extends StatelessWidget {
  const CustomExperienceBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 265,
        child: Column(children: [
          const SizedBox(
            child: Divider(
              color: Color(0xff5969AA),
              thickness: 9,
              endIndent: 138,
              indent: 139,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            // Text('HELLO'),
            // Text('HI')
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'Experience Level',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ]))),
               
              
          ]),
          
           
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
          width: 120,
          child: RaisedButton(
            color: const Color(0xff5969AA),
            onPressed: () {},
            shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text(
                  'Associate',
                  style: TextStyle(color: Colors.white),
            ),
          ),
        ),
          SizedBox(
          width: 120,
          child: RaisedButton(
            color: Colors.white,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text(
              'Executive',
              style: TextStyle(color: Color(0xff5969AA)),
            ),
          ),
        ),
          SizedBox(
          width: 120,
          child: RaisedButton(
            color: Colors.white,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text(
              'Top level',
              style: TextStyle(color: Color(0xff5969AA)),
            ),
          ),
        )
                ],
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
          width: 120,
          child: RaisedButton(
            color:  Colors.white,
            onPressed: () {},
            shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text(
                  'Intermediate',
                  style: TextStyle(color: Color(0xff5969AA)),
            ),
          ),
        ),
          SizedBox(
          width: 120,
          child: RaisedButton(
            color: Colors.white,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), ),
            child: const Text(
              'Beginner',
              style: TextStyle(color: Color(0xff5969AA),),
            ),
          ),
        ),
         
                ],
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 
          SizedBox(
          width: 156,
          child: RaisedButton(
            color: const Color(0xff5969AA),
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'Apply Filters',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
                ],
              ),

          
        ]));
    // Text('next'),
    // OutlinedButton(
    //     onPressed: () {
    //       Navigator.pop(context, true);
    //     },
    //     child: Text('click me'))
  }
}
