import 'package:flutter/material.dart';
import 'package:friend_activity/util/drawer_nav.dart';
import 'package:friend_activity/util/string_controller.dart';

class Profile extends StatelessWidget {
  final String imageAV, imageBG, profName, descProf, status, upload, ff, ffw;
  const Profile({
    required this.imageAV,
    required this.imageBG,
    required this.profName,
    required this.descProf,
    required this.status,
    required this.upload,
    required this.ff,
    required this.ffw,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarSt),
      ),
      drawer: DrawerNav(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              child: SizedBox(
                width: 900,
                child: Column(
                  children: <Widget>[
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 800,
                          child: Image(
                            image: AssetImage(this.imageBG),
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width * 1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: -50.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(this.imageAV),
                            radius: 80,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    ListTile(
                      title: Text(
                        this.profName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: fontStyle),
                      ),
                      subtitle: Text(
                        this.status,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: fontStyle),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              upload,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: fontStyle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.backup_rounded,
                              color: Colors.blue,
                            ),
                            Text(
                              "Uploads",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: fontStyle),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              ff,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: fontStyle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.graphic_eq_rounded,
                              color: Colors.blue,
                            ),
                            Text(
                              "Following",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: fontStyle),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              ffw,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: fontStyle),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.bar_chart_rounded,
                              color: Colors.blue,
                            ),
                            Text(
                              "Followers",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: fontStyle),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 800,
                      child: ListTile(
                        title: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              fontFamily: fontStyle),
                        ),
                        subtitle: Text(
                          this.descProf,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: fontStyle),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
