import 'package:friend_activity/util/string_controller.dart';
import 'package:flutter/material.dart';
import 'package:friend_activity/views/profile_view.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Container(
                child: Image(
                  image: AssetImage('assets/logo.jpg'),
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 83, 109, 254),
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text("My Profile"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profile(
                      imageAV: dir_avH,
                      imageBG: dir_bgH,
                      profName: homeProfilen,
                      descProf: descHome,
                      status: occupation,
                      upload: 7.toString(),
                      ff: 6.toString(),
                      ffw: 9.toString(),
                    ),
                  ))),
          ListTile(
              leading: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text(profn1),
              subtitle: Text("Friend #1"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profile(
                      imageAV: dir_avF1,
                      imageBG: dir_bgF1,
                      profName: profn1,
                      descProf: descProf1,
                      status: occupation,
                      upload: 8.toString(),
                      ff: 11.toString(),
                      ffw: 18.toString(),
                    ),
                  ))),
          ListTile(
              leading: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text(profn2),
              subtitle: Text("Friend #2"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profile(
                      imageAV: dir_avF2,
                      imageBG: dir_bgF2,
                      profName: profn2,
                      descProf: descProf2,
                      status: occupation,
                      upload: 9.toString(),
                      ff: 12.toString(),
                      ffw: 5.toString(),
                    ),
                  ))),
          ListTile(
              leading: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text(profn3),
              subtitle: Text("Friend #3"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profile(
                      imageAV: dir_avF3,
                      imageBG: dir_bgF3,
                      profName: profn3,
                      descProf: descProf3,
                      status: occupation,
                      upload: 6.toString(),
                      ff: 12.toString(),
                      ffw: 20.toString(),
                    ),
                  ))),
          ListTile(
              leading: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text(profn4),
              subtitle: Text("Friend #4"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profile(
                      imageAV: dir_avF4,
                      imageBG: dir_bgF4,
                      profName: profn4,
                      descProf: descProf4,
                      status: occupation,
                      upload: 9.toString(),
                      ff: 4.toString(),
                      ffw: 12.toString(),
                    ),
                  ))),
        ],
      ),
    );
  }
}
