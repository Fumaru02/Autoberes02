import 'package:get/get.dart';
import 'package:ot_apps/register_form.dart';

class LoginController extends GetxController {
  final count = 0.obs;
  var showSignUpButton = false.obs;

  void showButtonSignUp() {
    showSignUpButton.value = !showSignUpButton.value;
  }

  void navigateToRegisterPage() async {
    // Navigate to the next page and wait for it to complete
    await Get.to(RegisterForm());

    // Set the boolean variable to false when the user returns from the next page
    showSignUpButton.value = false;
  }

  void navigateToSignInPage() async {
    // Navigate to the next page and wait for it to complete
    await Get.toNamed('/signin');

    // Set the boolean variable to false when the user returns from the next page
    showSignUpButton.value = false;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
