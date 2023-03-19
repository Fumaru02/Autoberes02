import 'package:flutter/material.dart';
import 'autoberes_color.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.45,
      child: PageView.builder(
        controller: _controller,
        itemCount: 2,
        itemBuilder: (context, position) {
          return _buildPageProfile(position);
        },
      ),
    );
  }

  Widget _buildPageProfile(int index) {
    return Column(
      children: [
        Stack(children: [
          Container(
            margin: EdgeInsets.only(left: 28),
            foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.2),
                    Colors.white.withOpacity(0.1),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.4),
                  ],
                )),
            width: Get.width * 0.85,
            height: Get.height * 0.45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: autoBeresColors.mainColor),
          ),
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text(
                      "New Avanza",
                      style: TextStyle(
                          color: autoBeresColors.secondColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Toyota",
                      style: TextStyle(
                          color: autoBeresColors.yellowColor, fontSize: 14),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Image.asset("assets/icons/avanza.png"),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 38,
                            ),
                            Text(
                              "Model Type",
                              style: TextStyle(
                                  color: autoBeresColors.yellowColor,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 56,
                            ),
                            Text(
                              "Fuel",
                              style: TextStyle(
                                  color: autoBeresColors.yellowColor,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 98,
                            ),
                            Text(
                              "Transmission",
                              style: TextStyle(
                                  color: autoBeresColors.yellowColor,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 46,
                          ),
                          Text(
                            "MPV",
                            style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 74,
                          ),
                          Text(
                            "Gasoline",
                            style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 58,
                          ),
                          Text(
                            "Automatic",
                            style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 38,
                            ),
                            Text(
                              "Color",
                              style: TextStyle(
                                  color: autoBeresColors.yellowColor,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 82,
                            ),
                            Text(
                              "Year",
                              style: TextStyle(
                                  color: autoBeresColors.yellowColor,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 98,
                            ),
                            Text(
                              "Plate Number",
                              style: TextStyle(
                                  color: autoBeresColors.yellowColor,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 46,
                          ),
                          Text(
                            "Brown",
                            style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 64,
                          ),
                          Text(
                            "2019",
                            style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "B 2453 UBD",
                            style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 244,
                      height: 39,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: autoBeresColors.yellowColor),
                      child: Center(
                        child: Text(
                          "Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: autoBeresColors.mainColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
