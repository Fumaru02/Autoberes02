import 'package:flutter/material.dart';
import '../../../data/bigText.dart';
import '../../introduction/views/introduction_part2.dart';
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
                      "New Honda Vario",
                      style: TextStyle(
                          color: autoBeresColors.secondColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Vario",
                      style: TextStyle(
                          color: autoBeresColors.yellowColor, fontSize: 14),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Image.asset("assets/icons/vario.png"),
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
                            "Scooter",
                            style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 54,
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
                      height: 26,
                    ),
                    SizedBox(
                      width: 280,
                      height: 39,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffFFDC61),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          Get.to(DetailsVehicle(),
                              transition: Transition.rightToLeftWithFade,
                              duration: Duration(milliseconds: 500));
                        },
                        child: Center(
                            child: Text(
                          "Details",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    )
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

class DetailsVehicle extends StatefulWidget {
  const DetailsVehicle({super.key});

  @override
  State<DetailsVehicle> createState() => _DetailsVehicleState();
}

class _DetailsVehicleState extends State<DetailsVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Image(
          image: AssetImage("assets/icons/bg.png"),
          fit: BoxFit.fill,
        )),
        Center(
          child: Stack(children: [
            Column(
              children: [
                Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                    height: 265,
                    width: 400,
                    decoration: BoxDecoration(
                        color: autoBeresColors.yellowColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 70, right: 8, left: 8),
                      child: Text(
                          "          Honda Vario 160 adalah sepeda motor skuter otomatis yang dilengkapi dengan mesin 160cc. Sepeda motor ini memiliki kemampuan akselerasi yang baik, mampu mencapai kecepatan maksimum sekitar 120 km/jam, serta dilengkapi dengan fitur-fitur modern seperti lampu LED, panel instrumen digital, dan sistem pengereman cakram ABS.     \n            Selain itu, Honda Vario 160 juga memiliki stabilitas yang baik dan nyaman digunakan untuk perjalanan jarak jauh maupun dalam kota.",
                          textAlign: TextAlign.justify),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 200),
                    child: Image.asset(
                      "assets/icons/halfvario.png",
                    ),
                  ),
                ]),
              ],
            ),
            Column(children: [
              Expanded(
                  child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () => Get.back(),
                        child: Icon(
                          Icons.arrow_back,
                          color: autoBeresColors.secondColor,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "My Vehicles",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "VARIO 160",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Motorcycles",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: autoBeresColors.yellowColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Scooter",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Model Type",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: autoBeresColors.yellowColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Automatic",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Transmission",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: autoBeresColors.yellowColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "2022",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: autoBeresColors.secondColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Year Production",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: autoBeresColors.yellowColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
            ]),
          ]),
        ),
      ]),
    );
  }
}
