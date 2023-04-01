import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ot_apps/app/modules/introduction/views/introduction.dart';
import 'package:ot_apps/app/modules/login/views/login_view3.dart';
import 'app/modules/HomeDetails/views/home_details_view.dart';
import 'app/modules/login/views/login_view.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  final phoneNoController = TextEditingController();
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //email,password,name...
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //user get notification
    _user.bindStream(auth.userChanges());
    ever(_user, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user == null) {
      return Get.offAll(() => Introduction(),
          transition: Transition.fade, duration: Duration(seconds: 1));
    }
  }

  void register(String email, password) async {
    try {
      UserCredential myUser = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      addUserDetails(fullnameController.text.trim(),
          emailController.text.trim(), phoneNoController.text.trim());
      await myUser.user!.sendEmailVerification();
      if (myUser.user!.emailVerified) {
        Get.offAll(HomeDetailsView());
      } else {
        Get.defaultDialog(
          title: 'Verification Email',
          middleText: 'Verifikasi dulu!!!',
          onConfirm: () => Get.back(),
        );
      }
    } catch (e) {
      Get.snackbar("About", "User message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Account Creation Failed",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
  }

  Future addUserDetails(String fullName, String email, String phoneNo) async {
    await FirebaseFirestore.instance.collection('users').add({
      'fullname': fullName,
      'email': email,
      'phoneNo': phoneNo,
    });
  }

  void login(String email, password) async {
    try {
      UserCredential myUser = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (myUser.user!.emailVerified) {
        Get.to(HomeDetailsView());
      } else {
        Get.defaultDialog(
          title: 'Verification Email',
          middleText: 'Verifikasi dulu!!!',
          onConfirm: () => Get.back(),
        );
      }
    } catch (e) {
      Get.snackbar("About Login", "Login Message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Login Failed Please enter ur email and password",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(color: Colors.white),
          ));
    }
  }

  Future<void> logout() async => await auth.signOut();

  void resetPassword(String email) async {
    if (email != "" && GetUtils.isEmail(email)) {
      try {
        await auth.sendPasswordResetEmail(email: email);

        Get.defaultDialog(
            title: "Berhasil",
            middleText: "kami telah mengirimkan password ke $email.",
            onConfirm: () {
              Get.offAll(LoginView3());
            },
            textConfirm: "Ok");
      } catch (e) {
        Get.defaultDialog(title: "Ada Kesalahan", middleText: "Reset Password");
      }
      ;
    } else {
      Get.defaultDialog(
          title: "Ada Kesalahan", middleText: "Email tidak valid");
    }
  }
}
