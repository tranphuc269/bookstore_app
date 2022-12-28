import 'app_configuration.dart';
import 'core/app/app_env.dart';
import 'core/app/app_info.dart';
import 'core/database/secure_storage/secure_storage_manager.dart';
import 'initializer.dart';
import 'ui/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'core/localization/app_translations.dart';
import 'core/localization/locale_helper.dart';
import 'core/themes/app_theme.dart';
import 'core/themes/theme_manager.dart';
import 'ui/views/home/home_screen.dart';
import 'ui/views/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Initializer.init();
  AppInfo.setInfo(await PackageInfo.fromPlatform());
  AppConfiguration.developmentAPI =
      'https://59dd-2a09-bac1-7a80-50-00-245-4.ap.ngrok.io';
  AppEnv.set(Env.DEVELOPMENT);
  final _isLogin = await authChecked();
  runApp(App(
    isUserLoggedIn: _isLogin,
  ));
}

class App extends StatelessWidget {
  const App({required this.isUserLoggedIn, Key? key}) : super(key: key);
  final bool isUserLoggedIn;

  @override
  Widget build(BuildContext context) {
    return GetX<ThemeManager>(
      builder: (ctr) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Skybase Flutter Getx',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: (ctr.isDark.isTrue) ? ThemeMode.dark : ThemeMode.light,
        translations: AppTranslation(),
        locale: LocaleHelper().getCurrentLocale(),
        fallbackLocale: LocaleHelper().fallbackLocale,
        getPages: AppPages.routes,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}

Future<bool> authChecked() async {
  final _secure = Get.find<SecureStorageManager>();
  await _secure.setToken(
      value:
          'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOlsid2ViIl0sInVzZXJfaWQiOiJhODVmMGYyYy0yZDRkLTRiNzUtOTdiZC00MGQzNTQ4NzM1ZjIiLCJ1c2VyX25hbWUiOiJ0cmFucGh1YyIsInNjb3BlIjpbInJlYWQiLCJ3cml0ZSJdLCJleHAiOjE2NzI0ODAyNTEsImF1dGhvcml0aWVzIjpbIlNUQU5EQVJEX1VTRVIiXSwianRpIjoiZHNQMlRCNzJkZGlldkZfXzYxa3VtV1RjQ0JVIiwiY2xpZW50X2lkIjoiOTNlZDQ1M2UtYjdhYy00MTkyLWE2ZDQtYzQ1ZmFlMGQ5OWFjIn0.Ypolb0YiGjZgb3iGQXd2MT3OZJbstWR7Ll_0-98Y4DiYrxTw7qMJmpPWFkfkyjH1CxA85teP_7rt_SBrtRtiBASZ5m4u3is1vA3Pfh_37rBqygNVY69Yqinan8lBCfgcEFB-OqJkHIXmJ_jCUdwpDnym7L6g6Pp6-AC_IrmsuqTJkPpRbQnbXtF_7-uiJ4EtCj5uz6CCp9D0Rd3eYxSkmIG-gjtrxiL3dV5y8hr8PB2OGdFAa8mnJi2nheIZfzBx7s2YtppCipDcWY3msUrzebnwCE7VYi55GGR697Arvf8JSp2mgtsOPo95EvM7j-nB6Tc5-GV-mfu8j1y3aeyP3w');
  final _token = await _secure.getToken();
  return (_token ?? '').isNotEmpty;
}
