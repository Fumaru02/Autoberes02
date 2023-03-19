import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Spareparts extends StatelessWidget {
  const Spareparts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
          child: Image(
        image: AssetImage("assets/icons/bg.png"),
        fit: BoxFit.cover,
      )),
      ListView(children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child:
                      Image(image: AssetImage("assets/icons/backbutton.png"))),
              SizedBox(
                width: 35,
              ),
              Text("All Spareparts",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Color(0xFF292929),
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 246,
              height: 42,
              color: Colors.white,
              child:
                  Image(image: AssetImage("assets/icons/searchworkshop.png")),
            ),
            Container(
                width: 50,
                height: 50,
                child: Image(image: AssetImage("assets/icons/filter.png")))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              children: [
                _Filtering(
                  text: "Cars",
                  width: 115,
                  height: 44,
                ),
                _Filtering(
                  text: "Motorcycles",
                  width: 115,
                  height: 44,
                ),
                _Filtering(
                  text: "Truck",
                  width: 115,
                  height: 44,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              children: [
                RecommendedMec(
                  name: "Rudi Jaya",
                  range: "0.7 Km",
                  image: "assets/icons/cylinder.png",
                  address: "Jl. Raya Bekasi No.45",
                  tier: "Experts",
                  rating: "4.7",
                ),
                SizedBox(
                  height: 10,
                ),
                RecommendedMec(
                  name: "Roda Gemilang",
                  range: "1.2 Km",
                  image: "assets/icons/cylinder.png",
                  address: "Jl. Raya Bekasi No.98",
                  tier: "Professional",
                  rating: "4.3",
                ),
                SizedBox(
                  height: 10,
                ),
                RecommendedMec(
                  name: "Rudi Jaya",
                  range: "0.7 Km",
                  image: "assets/icons/cylinder.png",
                  address: "Jl. Raya Bekasi No.45",
                  tier: "Experts",
                  rating: "4.7",
                ),
                SizedBox(
                  height: 10,
                ),
                RecommendedMec(
                  name: "Roda Gemilang",
                  range: "1.2 Km",
                  image: "assets/icons/cylinder.png",
                  address: "Jl. Raya Bekasi No.98",
                  tier: "Professional",
                  rating: "4.3",
                ),
                SizedBox(
                  height: 10,
                ),
                RecommendedMec(
                  name: "Rudi Jaya",
                  range: "0.7 Km",
                  image: "assets/icons/cylinder.png",
                  address: "Jl. Raya Bekasi No.45",
                  tier: "Experts",
                  rating: "4.7",
                ),
                SizedBox(
                  height: 10,
                ),
                RecommendedMec(
                  name: "Roda Gemilang",
                  range: "1.2 Km",
                  image: "assets/icons/cylinder.png",
                  address: "Jl. Raya Bekasi No.98",
                  tier: "Professional",
                  rating: "4.3",
                ),
                SizedBox(
                  height: 10,
                ),
                RecommendedMec(
                  name: "Rudi Jaya",
                  range: "0.7 Km",
                  image: "assets/icons/cylinder.png",
                  address: "Jl. Raya Bekasi No.45",
                  tier: "Experts",
                  rating: "4.7",
                ),
                SizedBox(
                  height: 10,
                ),
                RecommendedMec(
                  name: "Roda Gemilang",
                  range: "1.2 Km",
                  image: "assets/icons/cylinder.png",
                  address: "Jl. Raya Bekasi No.98",
                  tier: "Professional",
                  rating: "4.3",
                ),
              ],
            ))
      ]),
    ]));
  }
}

class _Filtering extends StatelessWidget {
  const _Filtering({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
          decoration: BoxDecoration(
              color: Color(0xffFB5555),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3))
              ]),
          margin: EdgeInsets.only(right: 20),
          width: width,
          height: height,
          child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  textStyle: TextStyle(fontSize: 14),
                ),
              ))),
    );
  }
}

class RecommendedMec extends StatelessWidget {
  const RecommendedMec({
    Key? key,
    required this.name,
    required this.address,
    required this.range,
    required this.tier,
    required this.image,
    required this.rating,
    this.text,
    this.width = 325,
    this.height = 86,
  }) : super(key: key);
  final String name;
  final String rating;
  final String image;
  final String address;
  final String range;
  final String tier;
  final String? text;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 0.75))
            ]),
        margin: EdgeInsets.only(right: 20),
        width: width,
        height: height,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image)),
                  color: Colors.red,
                  shape: BoxShape.circle),
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Color(0xff292929),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      range,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Color(0xffBEBFC7),
                          fontSize: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      address,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Color(0xffBEBFC7),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  tier,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Color(0xffF95556),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Positioned(
        top: 22,
        right: 30,
        child: Row(children: [
          Image(image: AssetImage("assets/icons/ratingstar.png")),
          SizedBox(
            width: 3,
          ),
          Text(
            rating,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFB5555))),
          )
        ]),
      )
    ]);
  }
}
