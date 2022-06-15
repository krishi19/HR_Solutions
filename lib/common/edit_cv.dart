import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_solutions/common/experience_bottom_sheet.dart';

class CustomEditCVSheet extends StatefulWidget {
  const  CustomEditCVSheet({Key? key}) : super(key: key);

  @override
  State< CustomEditCVSheet> createState() => _CustomEditCVSheetState();
}

class _CustomEditCVSheetState extends State< CustomEditCVSheet> {
  double height = 204;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const SizedBox(
          height: 20,
          child: Divider(
            color: Color(0xff5969AA),
            thickness: 9,
            endIndent: 138,
            indent: 139,
          ),
        ),
        SizedBox(
          height: 40,
        ),
       
        
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.edit_note_rounded, color: Color(0xff5969AA),),
                  SizedBox(
                    width: 10,
                  ),
                 RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Edit your CV\n',
                                    style: TextStyle(
                                        color: Color(0xff5969AA),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                        
                ])
                ),
               


                ],
              ),
             Divider(
                thickness: 1,
                color: Color(0xff202C7B),
                endIndent: 30,
              ),
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.delete, color: Color(0xff5969AA),),
                   SizedBox(
                    width: 10,
                  ),
                 RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Download your CV\n',
                                    style: TextStyle(
                                        color: Color(0xff5969AA),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                         
                ])
                ),
               


                ],
              ),
              Divider(
                thickness: 1,
                color: Color(0xff202C7B),
                endIndent: 30,
              )
            

            ],
          ),
        )
     ] ));
  }
}
