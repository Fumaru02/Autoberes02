import 'package:flutter/material.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/profilePage.dart';
import '../../../data/bigText.dart';
import 'autoberes_color.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: true,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 65,
            flexibleSpace: Positioned.fill(
                child: Image(
              image: AssetImage("assets/icons/bg2.png"),
              fit: BoxFit.cover,
            )),
            automaticallyImplyLeading: false,
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            ),
            backgroundColor: autoBeresColors.mainColor,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: autoBeresColors.yellowColor,
                  ))
            ],
          ),
          body: DecoratedBox(
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/icons/bg2.png"))),
            child: Center(
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 4),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 6, color: autoBeresColors.mainColor),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 72,
                          backgroundImage:
                              AssetImage("assets/icons/fumaru.png"),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Fadilah Umar",
                        style: TextStyle(
                            color: autoBeresColors.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "fumaru@gmail.com",
                        style: TextStyle(
                            color: autoBeresColors.greyColor, fontSize: 12),
                      ),
                      Text(
                        "+62 812-3456-7891",
                        style: TextStyle(
                            color: autoBeresColors.greyColor, fontSize: 12),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 129,
                        height: 21,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: autoBeresColors.mainColor),
                        child: Center(
                          child: Text(
                            "My Vehicles",
                            style:
                                TextStyle(color: autoBeresColors.yellowColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      ProfilePage(),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
