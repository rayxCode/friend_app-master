import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:friend_activity/controller/auth_controller.dart';
import 'package:friend_activity/util/string_controller.dart';
import 'package:friend_activity/views/profile_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {
  String textForm = "Dont have an account? Sign up here",
      buttonTxtform = "LOGIN";
  bool trigger = true;
  bool isNotLogin = true;
  final passController = TextEditingController();
  final userController = TextEditingController();
  var authHandler = new Auth();

  windowChange() {
    if (trigger) {
      trigger = false;
    } else {
      trigger = true;
    }
    setState(() {
      trigger
          ? textForm = "Don't have an account? Sign up here"
          : textForm = "Already have an account? Login here";
      trigger ? buttonTxtform = "LOGIN" : buttonTxtform = "SIGNUP";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: <Widget>[
              SizedBox(
                child: Column(
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(20.0)),
                    Center(
                      child: Positioned(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height * .5,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(dir_Logo),
                          radius: 80,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      LogoName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: fontStyle),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 400,
                height: 55,
                child: TextField(
                  obscureText: false,
                  controller: userController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    labelText: 'Username',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 400,
                height: 55,
                child: TextField(
                  obscureText: true,
                  controller: passController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () => windowChange(), child: Text(textForm)),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextButton(
                  onPressed: () =>
                    isNotLogin ? authHandler.Login(userController.text, passController.text).then((User user) {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) => new Profile(
                imageAV: dir_avH,
                imageBG: dir_bgH,
                profName: homeProfilen,
                descProf: descHome,
                status: occupation,
                upload: 7.toString(),
                ff: 6.toString(),
                ffw: 9.toString(),
                )
              ));}).catchError((e) => SnackBar(content: Text(e.toString()))): authHandler.SignUp(userController.text, passController.text). ,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.white),
                  child: Text(buttonTxtform),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: SizedBox(
                        child: Divider(
                          color: Colors.black,
                          height: 50,
                        ),
                      ),
                    ),
                    Text(" OR "),
                    Expanded(
                      child: SizedBox(
                        child: Divider(
                          color: Colors.black,
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Positioned(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(gLogo),
                        radius: 80,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Positioned(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(fLogo),
                        radius: 80,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Positioned(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(yLogo),
                        radius: 80,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ],
    ));
  }
}
