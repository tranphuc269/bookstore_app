import 'package:get/get.dart';

import '../views/cart/cart_binding.dart';
import '../views/cart/cart_screen.dart';
import '../views/complete_profile/complete_profile_screen.dart';
import '../views/details/details_screen.dart';
import '../views/forgot_password/forgot_password_screen.dart';
import '../views/home/binding.dart';
import '../views/home/home_screen.dart';
import '../views/login_success/login_success_screen.dart';
import '../views/otp/otp_screen.dart';
import '../views/profile/profile_screen.dart';
import '../views/sign_in/sign_in_screen.dart';
import '../views/sign_up/sign_up_screen.dart';
import '../views/splash/splash_screen.dart';

class AppPages {
  static const initial = ' MainNavView.route';

  static final routes = <GetPage>[
    GetPage(name: DetailsScreen.routeName, page: () => DetailsScreen()),
    GetPage(name: SplashScreen.routeName, page: () => SplashScreen()),
    GetPage(
        name: HomeScreen.routeName,
        page: () => HomeScreen(),
        binding: HomeBinding()),
    GetPage(
        name: ForgotPasswordScreen.routeName,
        page: () => ForgotPasswordScreen()),
    GetPage(
        name: CartScreen.routeName,
        page: () => CartScreen(),
        binding: CartBinding()),
    GetPage(
        name: CompleteProfileScreen.routeName,
        page: () => CompleteProfileScreen()),
    GetPage(name: SignUpScreen.routeName, page: () => SignUpScreen()),
    GetPage(name: SignInScreen.routeName, page: () => SignInScreen()),
    GetPage(name: ProfileScreen.routeName, page: () => ProfileScreen()),
    GetPage(
        name: LoginSuccessScreen.routeName, page: () => LoginSuccessScreen()),
    GetPage(name: OtpScreen.routeName, page: () => OtpScreen()),
  ];
}

///SplashScreen.routeName: (context) => SplashScreen(),
//   SignInScreen.routeName: (context) => SignInScreen(),
//   ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
//   LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
//   SignUpScreen.routeName: (context) => SignUpScreen(),
//   CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
//   OtpScreen.routeName: (context) => OtpScreen(),
//   HomeScreen.routeName: (context) => HomeScreen(),
//   DetailsScreen.routeName: (context) => DetailsScreen(),
//   CartScreen.routeName: (context) => CartScreen(),
//   ProfileScreen.routeName: (context) => ProfileScreen(),
