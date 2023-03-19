import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mechanic_details_controller.dart';

class MechanicDetailsView extends GetView<MechanicDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MechanicDetailsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MechanicDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
