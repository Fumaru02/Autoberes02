import 'package:flutter/cupertino.dart';

class PromoPageBody extends StatefulWidget {
  const PromoPageBody({super.key});

  @override
  State<PromoPageBody> createState() => _PromoPageBodyState();
}

class _PromoPageBodyState extends State<PromoPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176,
      child: PageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      width: 289,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: index.isEven ? Color(0xffFB5555) : Color(0xFF292929),
          image: DecorationImage(
              image: AssetImage(
                "assets/icons/promo1.png",
              ),
              fit: BoxFit.cover)),
    );
  }
}
