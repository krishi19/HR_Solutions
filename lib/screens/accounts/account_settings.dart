import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Account Settings',
          style: TextStyle(fontSize: 26, color: Color(0xff202C7B)),
        ),
      ),
      backgroundColor: const Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            AccountLabelWidget(
           label: 'Lacinia consectetur netus a lobortis',
              showBottom: true,
              showTop: true,
            ),
            AccountLabelWidget(
            label: 'Lacinia consectetur netus a lobortis',
              showBottom: true,
              showTop: true,
            ),
          SizedBox(
            height:10 ,
          ),
           AccountLabelWidget(
              label: 'Lacinia consectetur netus a lobortis',
              showBottom: true,
              showTop: true,
            ),
             AccountLabelWidget(
          label: 'Lacinia consectetur netus a lobortis',
              showBottom: true,
              showTop: true,
            ),
             AccountLabelWidget(
         label: 'Lacinia consectetur netus a lobortis',
              showBottom: true,
              showTop: true,
            ),
            SizedBox(
              height: 10,
            ),
             AccountLabelWidget(
            label: 'Lacinia consectetur netus a lobortis',
              showBottom: true,
              showTop: true,
            ),
             AccountLabelWidget(
             label: 'Lacinia consectetur netus a lobortis',
              showBottom: true,
              showTop: true,
            ),
             AccountLabelWidget(
            label: 'Lacinia consectetur netus a lobortis',
              showBottom: true,
              showTop: true,
            ),
            SizedBox(
              height: 20,
            ),
           AccountLabelWidget(
              label: 'Delete Account',
              showBottom: true,
              showTop: true,
            ),
            SizedBox(
              height: 20,
            ),
             AccountLabelWidget(
              label: 'Logout',
              showBottom: true,
              showTop: true,
            )
          ],
        ),
      ),
    );
  }
}

class AccountLabelWidget extends StatelessWidget {
  final bool showTop;
  final bool showBottom;
  final String label;

  const AccountLabelWidget({
    Key? key,
    required this.showTop,
    required this.showBottom,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: showTop,
          child: Divider(
            height: 0,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(child: Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff5969AA)),), ),
              Icon(Icons.arrow_forward_ios, color: Color(0xff5969AA),),
            ],
          ),
        ),
        Visibility(
          visible: showBottom,
          child: Divider(
            height: 0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
