


import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mc/views/screens/auth/forgot_password_screen.dart';
import '../../views/screens/splash/splash_screen.dart';
import '../views/screens/auth/login_screen.dart';
import '../views/screens/auth/reset_password_screen.dart';
import '../views/screens/auth/verify_screen.dart';
import '../views/screens/driver/driver_bottom_nav_bar/driver_bottom_nav_bar.dart';
import '../views/screens/driver/driver_home/confirmation_screen.dart';
import '../views/screens/driver/driver_home/delivery_details_screen.dart';
import '../views/screens/driver/driver_home/manage_return_sreen.dart';
import '../views/screens/merchandiser/buttom_nav_bar/merchandiser_bottom_nav_bar.dart';
import '../views/screens/merchandiser/merchandiser_home/assigned_stores_screen.dart';
import '../views/screens/merchandiser/merchandiser_home/confirm_order_screen.dart';
import '../views/screens/merchandiser/merchandiser_home/merchandiser_home_screen.dart';
import '../views/screens/merchandiser/merchandiser_home/missing_sticker_screen.dart';
import '../views/screens/merchandiser/merchandiser_home/product_screen.dart';
import '../views/screens/merchandiser/merchandiser_home/read_update_screen.dart';
import '../views/screens/merchandiser/merchandiser_home/report_screen.dart';
import '../views/screens/notification/notification_screen.dart';
import '../views/screens/profile/change_password_screen.dart';
import '../views/screens/profile/edit_information_screen.dart';
import '../views/screens/profile/general_information_screen.dart';
import '../views/screens/profile/privacy_policy_all_screen.dart';
import '../views/screens/profile/setting_screen.dart';
import '../views/screens/ware_hourse/ware_hourse_bottom_nav/ware_house_bottom_nav_bar.dart';
import '../views/screens/ware_hourse/ware_house_home/all_order_screen.dart';
import '../views/screens/ware_hourse/ware_house_pading_order/pick_list_screen.dart';



class AppRoutes {
  static const String splashScreen = "/SplashScreen";
  static const String loginScreen = "/LoginScreen";
  static const String resetPasswordScreen = "/ResetPasswordScreen";
  static const String forgotPasswordScreen = "/ForgotPasswordScreen";
  static const String verifyScreen = "/VerifyScreen";
  static const String merchandiserHomeScreen = "/MerchandiserHomeScreen";
  static const String merchandiserBottomNavBar = "/MerchandiserBottomNavBar";
  static const String assignedStoresScreen = "/AssignedStoresScreen";
  static const String settingScreen = "/SettingScreen";
  static const String changePasswordScreen = "/ChangePasswordScreen";
  static const String privacyPolicyAllScreen = "/PrivacyPolicyAllScreen";
  static const String wareHouseBottomNavBar = "/WareHouseBottomNavBar";
  static const String allOrderScreen = "/AllOrderScreen";
  static const String pickListScreen = "/PickListScreen";
  static const String driverBottomNavBar = "/DriverBottomNavBar";
  static const String deliveryDetailsScreen = "/DeliveryDetailsScreen";
  static const String manageReturnSreen = "/ManageReturnSreen";
  static const String confirmationScreen = "/ConfirmationScreen";
  static const String productScreen = "/ProductScreen";
  static const String notificationScreen = "/NotificationScreen";
  static const String readUpdateScreen = "/ReadUpdateScreen";
  static const String generalInformationScreen = "/GeneralInformationScreen";
  static const String editInformationScreen = "/EditInformationScreen";
  static const String missingStickerScreen = "/MissingStickerScreen";
  static const String reportScreen = "/ReportScreen";
  static const String confirmOrderScreen = "/ConfirmOrderScreen";



  static List<GetPage> get routes => [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () =>  LoginScreen()),
    GetPage(name: resetPasswordScreen, page: () =>  ResetPasswordScreen()),
    GetPage(name: forgotPasswordScreen, page: () =>  ForgotPasswordScreen()),
    GetPage(name: verifyScreen, page: () =>  VerifyScreen()),
    GetPage(name: merchandiserHomeScreen, page: () =>  MerchandiserHomeScreen()),
    GetPage(name: merchandiserBottomNavBar, page: () =>  MerchandiserBottomNavBar()),
    GetPage(name: assignedStoresScreen, page: () =>  AssignedStoresScreen()),
    GetPage(name: settingScreen, page: () =>  SettingScreen()),
    GetPage(name: changePasswordScreen, page: () =>  ChangePasswordScreen()),
    GetPage(name: privacyPolicyAllScreen, page: () =>  PrivacyPolicyAllScreen()),
    GetPage(name: wareHouseBottomNavBar, page: () =>  WareHouseBottomNavBar()),
    GetPage(name: allOrderScreen, page: () =>  AllOrderScreen()),
    GetPage(name: pickListScreen, page: () =>  PickListScreen()),
    GetPage(name: driverBottomNavBar, page: () =>  DriverBottomNavBar()),
    GetPage(name: deliveryDetailsScreen, page: () =>  DeliveryDetailsScreen()),
    GetPage(name: manageReturnSreen, page: () =>  ManageReturnSreen()),
    GetPage(name: confirmationScreen, page: () =>  ConfirmationScreen()),
    GetPage(name: productScreen, page: () =>  ProductScreen()),
    GetPage(name: notificationScreen, page: () =>  NotificationScreen()),
    GetPage(name: readUpdateScreen, page: () =>  ReadUpdateScreen()),
    GetPage(name: generalInformationScreen, page: () =>  GeneralInformationScreen()),
    GetPage(name: editInformationScreen, page: () =>  EditInformationScreen()),
    GetPage(name: missingStickerScreen, page: () =>  MissingStickerScreen()),
    GetPage(name: reportScreen, page: () =>  ReportScreen()),
    GetPage(name: confirmOrderScreen, page: () =>  ConfirmOrderScreen()),

  ];
}
