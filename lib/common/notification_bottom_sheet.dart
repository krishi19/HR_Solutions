import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_solutions/common/experience_bottom_sheet.dart';

class CustomNotificationSheet extends StatefulWidget {
  const CustomNotificationSheet({Key? key}) : super(key: key);

  @override
  State<CustomNotificationSheet> createState() => _CustomNotificationSheetState();
}

class _CustomNotificationSheetState extends State<CustomNotificationSheet> {
  double height = 297;
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
        SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          // Text('HELLO'),
          // Text('HI')
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'Options',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
            ])),
          ),
          // Text('Reset')
        
        ]),
        Divider(
          color: Color(0xff5969AA),
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.mail_outline_sharp, color: Color(0xff5969AA),),
                  SizedBox(
                    width: 10,
                  ),
                 RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Mark as Read\n',
                                    style: TextStyle(
                                        color: Color(0xff5969AA),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                         TextSpan(
                                    text: 'Mark the notification as read \n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                ])
                ),
               


                ],
              ),
              Divider(),
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
                                    text: 'Delete\n',
                                    style: TextStyle(
                                        color: Color(0xff5969AA),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                         TextSpan(
                                    text: 'Delete the notificaiton permanently\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                ])
                ),
               


                ],
              ),
              Divider(),
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.notifications_off, color: Color(0xff5969AA),),
                   SizedBox(
                    width: 10,
                  ),
                 RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Turn of the notification\n',
                                    style: TextStyle(
                                        color: Color(0xff5969AA),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                         TextSpan(
                                    text: 'Turn of the similar notifications\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                ])
                ),
               


                ],
              ),

            ],
          ),
        )
     ] ));
  }
}
