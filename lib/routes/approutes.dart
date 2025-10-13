


import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mc/views/screens/auth/forgot_password_screen.dart';
import '../../views/screens/splash/splash_screen.dart';
import '../views/screens/auth/login_screen.dart';
import '../views/screens/auth/reset_password_screen.dart';
import '../views/screens/auth/verify_screen.dart';
import '../views/screens/merchandiser/buttom_nav_bar/merchandiser_bottom_nav_bar.dart';
import '../views/screens/merchandiser/merchandiser_home/assigned_stores_screen.dart';
import '../views/screens/merchandiser/merchandiser_home/merchandiser_home_screen.dart';



class AppRoutes {
  static const String splashScreen = "/SplashScreen";
  static const String loginScreen = "/LoginScreen";
  static const String resetPasswordScreen = "/ResetPasswordScreen";
  static const String forgotPasswordScreen = "/ForgotPasswordScreen";
  static const String verifyScreen = "/VerifyScreen";
  static const String merchandiserHomeScreen = "/MerchandiserHomeScreen";
  static const String merchandiserBottomNavBar = "/MerchandiserBottomNavBar";
  static const String assignedStoresScreen = "/AssignedStoresScreen";



  static List<GetPage> get routes => [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () =>  LoginScreen()),
    GetPage(name: resetPasswordScreen, page: () =>  ResetPasswordScreen()),
    GetPage(name: forgotPasswordScreen, page: () =>  ForgotPasswordScreen()),
    GetPage(name: verifyScreen, page: () =>  VerifyScreen()),
    GetPage(name: merchandiserHomeScreen, page: () =>  MerchandiserHomeScreen()),
    GetPage(name: merchandiserBottomNavBar, page: () =>  MerchandiserBottomNavBar()),
    GetPage(name: assignedStoresScreen, page: () =>  AssignedStoresScreen()),

  ];
}
