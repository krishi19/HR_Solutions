// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_solutions/common/experience_bottom_sheet.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  double height = 400;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                  text: 'FILTERS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ])),
          ),
          // Text('Reset')
          Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(right: 44),
                child: Text('Reset',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ),
            ),
          ),
        ]),
        Divider(
          color: Color(0xff5969AA),
          thickness: 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Sort By:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Relevance',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            Image.asset('assets/icons/downarrow.png')
          ],
        ),
        Divider(
          color: Color(0xff5969AA),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Date:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Any',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            Image.asset('assets/icons/downarrow.png')
          ],
        ),
        Divider(
          color: Color(0xff5969AA),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Experience:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Any',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            GestureDetector(
              onTap: () async {
                setState(() {
                    height = 100;
                  });
                final res = await showModalBottomSheet(
                  context: context,
                isDismissible: false,
                isScrollControlled: false,
                enableDrag: false,
              
                  builder: (ctx) {
                    return CustomExperienceBottomSheet();
                  },
                );
                print('res : $res');
                if (res != null) {
                  setState(() {
                    height = 400;
                  });
                }
              },
              child: Image.asset('assets/icons/downarrow.png'),
            )
          ],
        ),
        Divider(
          color: Color(0xff5969AA),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Job Type:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              width: 10,
            ),
            Text('Any',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            Image.asset('assets/icons/downarrow.png')
          ],
        ),
        Divider(
          color: Color(0xff5969AA),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Location:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Any',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            Image.asset('assets/icons/downarrow.png')
          ],
        ),
        Divider(
          color: Color(0xff5969AA),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Industry:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              width: 10,
            ),
            Text('Any',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
            Image.asset('assets/icons/downarrow.png')
          ],
        ),
        Divider(
          color: Color(0xff5969AA),
        ),
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
      ]),
    );
  }
}
