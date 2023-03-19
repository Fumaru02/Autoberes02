import 'package:get/get.dart';

import '../controllers/mechanic_details_controller.dart';

class MechanicDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MechanicDetailsController>(
      () => MechanicDetailsController(),
    );
  }
}
