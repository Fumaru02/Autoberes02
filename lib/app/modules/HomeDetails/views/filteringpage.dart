import 'package:flutter/cupertino.dart';

class FilteringPage extends StatefulWidget {
  const FilteringPage({super.key});

  @override
  State<FilteringPage> createState() => _FilteringPageState();
}

class _FilteringPageState extends State<FilteringPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          width: 200,
          height: 100,
          color: Color(0xffFB5555),
        ),
      ],
    );
  }
}
