import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ot_apps/register_form.dart';

class LoginController extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn();
  FirebaseAuth _auth = FirebaseAuth.instance;

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

  void signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      await _auth.signInWithCredential(credential);
    } catch (error) {
      print(error);
    }
  }
}
