import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mechanic extends StatelessWidget {
  const Mechanic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            'Service',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: Stack(children: [
          //background merah
          Container(width: Get.width, height: 134, color: Color(0xffC23E3E)),
          //background putih icon
          Container(
            width: Get.width,
            height: Get.height,
            child: Image.asset(
              'assets/icons/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            flex: 1,
            child: SafeArea(
              child: ListView(
                children: [
                  //children 1
                  const NearbyMechanic(),
                  MechanicProfile(
                    mechanicName: 'Arman',
                    picture: 'mechanicpic.png',
                    distance: '0.7 Km\t',
                    qualification: 'Excelence',
                    ratingNumber: '4.7',
                    verifiedIcon: Icons.verified,
                  ),
                  MechanicProfile(
                    mechanicName: 'Adi',
                    picture: 'mechanicpic.png',
                    distance: '1.4 km\t',
                    qualification: 'Fantastic',
                    ratingNumber: '4.9',
                    verifiedIcon: Icons.verified,
                  ),
                  MechanicProfile(
                    mechanicName: 'Burhan',
                    picture: 'mechanicpic.png',
                    distance: '1.8 km\t',
                    qualification: 'Verified',
                    ratingNumber: '4.0',
                    verifiedIcon: Icons.verified,
                  ),
                  MechanicProfile(
                    mechanicName: 'Juned',
                    picture: 'mechanicpic.png',
                    distance: '2.7 km\t',
                    qualification: 'Profesional',
                    ratingNumber: '4.1',
                    verifiedIcon: Icons.verified,
                  ),
                  MechanicProfile(
                    mechanicName: 'Dasian',
                    picture: 'mechanicpic.png',
                    distance: '3.5 km\t',
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}

class NearbyMechanic extends StatelessWidget {
  const NearbyMechanic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Flexible(
          flex: 2,
          //container berisi map
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xffC23E3E),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            padding: const EdgeInsets.all(5),
            height: 115,
            width: Get.width,
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 8,
                ),
                Image(image: AssetImage('assets/icons/mechanichp.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mechanic',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                          'Pastikan mekanik sesuai dengan apa yang \nkamu butuhkan',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class MechanicProfile extends StatelessWidget {
  String mechanicName, distance, location, ratingNumber, qualification;
  IconData? verifiedIcon;
  IconData starRating;
  IconData rightButton;
  String picture; //untuk image asset
  VoidCallback? callback; //method untuk on Tap

//constructor
  MechanicProfile({
    required this.mechanicName,
    required this.picture,
    this.distance = '0 Km',
    this.location = 'Indonesia',
    this.qualification = 'No Record',
    this.ratingNumber = '0.0',
    this.rightButton = Icons.arrow_forward_ios,
    this.starRating = Icons.star,
    this.verifiedIcon,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                    offset: Offset(-1, 4))
              ]),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/icons/$picture',
                fit: BoxFit.cover,
              ),
              const Spacer(flex: 1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mechanicName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(children: [
                    Text(
                      distance,
                      style:
                          const TextStyle(color: Colors.black38, fontSize: 10),
                    ),
                    Text(location,
                        style: const TextStyle(
                            color: Colors.black38, fontSize: 10))
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        qualification,
                        style: const TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      Icon(
                        verifiedIcon,
                        size: 18,
                        color: Colors.redAccent,
                      )
                    ],
                  )
                ],
              ),
              const Spacer(
                flex: 4,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        starRating,
                        size: 15,
                        color: Colors.redAccent,
                      ),
                      Text(ratingNumber,
                          style: const TextStyle(
                              color: Colors.redAccent, fontSize: 12))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Icon(
                    rightButton,
                    color: Colors.redAccent,
                    size: 16,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
