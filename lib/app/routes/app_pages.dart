import 'package:get/get.dart';

import 'package:ot_apps/app/modules/HomeDetails/bindings/home_details_binding.dart';
import 'package:ot_apps/app/modules/HomeDetails/views/home_details_view.dart';
import 'package:ot_apps/app/modules/MechanicDetails/bindings/mechanic_details_binding.dart';
import 'package:ot_apps/app/modules/MechanicDetails/views/mechanic_details_view.dart';
import 'package:ot_apps/app/modules/home/bindings/home_binding.dart';
import 'package:ot_apps/app/modules/home/views/home_view.dart';
import 'package:ot_apps/app/modules/login/bindings/login_binding.dart';
import 'package:ot_apps/app/modules/login/views/login_view.dart';
import 'package:ot_apps/app/modules/register/bindings/register_binding.dart';
import 'package:ot_apps/app/modules/register/views/register_view.dart';
import 'package:ot_apps/app/modules/login/views/login_view2.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.HOME_DETAILS,
      page: () => HomeDetailsView(),
      binding: HomeDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MECHANIC_DETAILS,
      page: () => MechanicDetailsView(),
      binding: MechanicDetailsBinding(),
    ),
    GetPage(
        name: _Paths.SIGNIN,
        page: () => LoginView2(),
        binding: LoginBinding(),
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 600)),
  ];
}
