import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ot_apps/app/data/splashscreen.dart';
import 'package:ot_apps/auth_controller.dart';
import 'package:ot_apps/firebase_options.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthController(), permanent: true));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 1)),
      builder: (context, snapshot) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          title: "Application",
          initialRoute:
              snapshot.data != null && snapshot.data!.emailVerified == true
                  ? Routes.HOME
                  : Routes.LOGIN,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
