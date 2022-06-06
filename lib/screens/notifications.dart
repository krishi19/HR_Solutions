import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Notification',
          style: TextStyle(fontSize: 30, color: Color(0xff202C7B)),
        ),
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
            child: Row(children: const <Widget>[
              Text(
                'All Notifications',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 6),
              Image(image: AssetImage('assets/icons/downarrow.png')),
            ]),
          ),
        const  SizedBox(
            height: 2,
          ),
       const  ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/icons/logo 1.png'),
                 backgroundColor: Colors.white,
               ),
       
             ),
            
          
        ]
      ),
    );
  }
}
