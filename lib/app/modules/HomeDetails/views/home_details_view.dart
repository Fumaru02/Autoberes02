import 'package:flutter/material.dart';
import 'package:ot_apps/register_form.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/profilview.dart';
import 'package:ot_apps/auth_controller.dart';
import '../../../data/bigText.dart';
import 'autoberes_color.dart';

import '../controllers/home_details_controller.dart';

// ignore: must_be_immutable
class HomeDetailsView extends GetView<HomeDetailsController> {
  String? email;
  HomeDetailsView({Key? key, this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: true,
        child: Scaffold(
          drawerScrimColor: Colors.transparent,
          drawer: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35)),
            child: SizedBox(
              width: 248,
              child: Drawer(
                child: Stack(children: [
                  Container(
                    foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                          Colors.black.withOpacity(0.95),
                          Color(0xff2D2D2D),
                          Color(0xff2D2D2D),
                          Color(0xff242424).withOpacity(1),
                        ])),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 72,
                              backgroundImage:
                                  AssetImage("assets/icons/fumaru.png"),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Fadilah Umar",
                              style: TextStyle(
                                  fontFamily: 'DeliciousHandrawn',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50),
                            ),
                            Text(
                              email ?? "",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: autoBeresColors.secondColor,
                        ),
                        title: const Text(
                          ' Profile ',
                          style: TextStyle(color: autoBeresColors.secondColor),
                        ),
                        onTap: () {
                          Get.to(ProfilView());
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.car_crash,
                          color: autoBeresColors.secondColor,
                        ),
                        title: const Text(
                          ' Vehicle ',
                          style: TextStyle(color: autoBeresColors.secondColor),
                        ),
                        onTap: () {
                          Get.to(RegisterForm());
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.chat,
                          color: autoBeresColors.secondColor,
                        ),
                        title: const Text(' Chat ',
                            style:
                                TextStyle(color: autoBeresColors.secondColor)),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.group,
                          color: autoBeresColors.secondColor,
                        ),
                        title: const Text(' Groups ',
                            style:
                                TextStyle(color: autoBeresColors.secondColor)),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.forum,
                          color: autoBeresColors.secondColor,
                        ),
                        title: const Text(' Forum ',
                            style:
                                TextStyle(color: autoBeresColors.secondColor)),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.info,
                          color: autoBeresColors.secondColor,
                        ),
                        title: const Text(' About ',
                            style:
                                TextStyle(color: autoBeresColors.secondColor)),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                        leading: Icon(
                          Icons.logout,
                          color: autoBeresColors.secondColor,
                        ),
                        title: const Text('LogOut',
                            style:
                                TextStyle(color: autoBeresColors.secondColor)),
                        onTap: () {
                          AuthController.instance.logout();
                        },
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
          appBar: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: Icon(Icons.menu)),
            ),
            toolbarHeight: 65,
            flexibleSpace: Positioned.fill(
                child: Image(
              image: AssetImage("assets/icons/bg2.png"),
              fit: BoxFit.cover,
            )),
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Row(
              children: [
                SizedBox(
                  width: 55,
                ),
                BigTextSpan(
                  text: "Auto",
                  text2: "Beres",
                ),
              ],
            ),
            backgroundColor: autoBeresColors.mainColor,
            actions: [
              IconButton(
                  onPressed: () =>
                      Get.to(SearchPage(), transition: Transition.cupertino),
                  icon: Icon(Icons.notifications))
            ],
          ),
          body: DecoratedBox(
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/icons/bg2.png"))),
            child: ListView(children: [
              Center(
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Container(
                            foregroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.center,
                                    colors: [
                                      Colors.black,
                                      Colors.white.withOpacity(0.1),
                                    ])),
                            child: Image(
                              image: AssetImage("assets/icons/caremployee.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            bottom: 22,
                            left: 18,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Icon(
                                      Icons.book_rounded,
                                      size: 32,
                                      color: autoBeresColors.secondColor,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Modules",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: autoBeresColors.yellowColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Materi belajar yang disusun secara sistematis\ndan terstruktur untuk membantu  memahami\ndasar-dasar perbaikan kendaraan.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: autoBeresColors.secondColor,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'Roboto1'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 50,
                        ),
                        Stack(children: [
                          Container(
                            foregroundDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.center,
                                    colors: [
                                      Colors.black,
                                      Colors.white.withOpacity(0.1),
                                    ])),
                            child: Image(
                              image:
                                  AssetImage("assets/icons/caremployee2.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            bottom: 22,
                            left: 20,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Image.asset(
                                      "assets/icons/remindericon.png",
                                      scale: 3,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Reminder",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: autoBeresColors.yellowColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Layanan pengingat untuk pemilik kendaraan\nuntuk melakukan servis secara teratur sesuai\ndengan jadwal yang direkomendasikan",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: autoBeresColors.secondColor,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height) // Add line p1p2
      ..lineTo(size.width, size.height)
      ..lineTo(100, 0) // Add line p2p3
      ..lineTo(80, 0) // Add line p2p3
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffC23E3E),
          // The search area here
          title: Container(
            margin: EdgeInsets.only(right: 50),
            width: Get.width,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )),
      body: Stack(
        children: [
          Positioned.fill(
              child: Image(
            image: AssetImage("assets/icons/bg.png"),
            fit: BoxFit.cover,
          )),
        ],
      ),
    );
  }
}

class gradienColor extends StatelessWidget {
  const gradienColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 2))
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.black.withOpacity(0.95),
                Color(0xff2D2D2D),
                Color(0xff2D2D2D),
                Color(0xff242424).withOpacity(1),
              ])),
    );
  }
}
