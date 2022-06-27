import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_solutions/modules/auth/cubit/auth_cubit.dart';
import 'package:hr_solutions/modules/auth/screens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final botToastBuilder = BotToastInit();

  // This widget is the root of your application.
  // designSize: const Size(390, 844),
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => AuthCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (ctx, widget) {
          return MaterialApp(
            title: 'Flutter Demo',
            builder: (context, child) {
              child = botToastBuilder(context, child);
              return child;
            },
            navigatorObservers: [BotToastNavigatorObserver()],
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            // home: const JobsPage()
            home: const LoginPage(),
          );
        },
      ),
    );
  }
}
