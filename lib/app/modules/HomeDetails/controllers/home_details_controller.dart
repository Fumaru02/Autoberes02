import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeDetailsController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  RxString userName = RxString('');

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      _firestore
          .collection('users')
          .doc(user.uid)
          .get()
          .then((DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) {
          Map<String, dynamic> data =
              documentSnapshot.data() as Map<String, dynamic>;
          userName.value = data['fullname'];
        } else {
          print('tidak ada data ges..');
        }
      });
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
