import 'package:flutter/material.dart';
import 'package:friend_activity/util/string_controller.dart';
import 'package:friend_activity/views/login_view.dart';
import 'package:friend_activity/views/profile_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Friend',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: isLogin_view
            ? Profile(
                imageAV: dir_avH,
                imageBG: dir_bgH,
                profName: homeProfilen,
                descProf: descHome,
                status: occupation,
                upload: 7.toString(),
                ff: 6.toString(),
                ffw: 9.toString(),
              )
            : LoginView(),
      );
}
