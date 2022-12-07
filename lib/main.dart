import 'app_configuration.dart';
import 'core/app/app_env.dart';
import 'core/app/app_info.dart';
import 'core/database/secure_storage/secure_storage_manager.dart';
import 'data/sources/server/catalog/banner/banner_api_impl.dart';
import 'initializer.dart';
import 'ui/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'core/localization/app_translations.dart';
import 'core/localization/locale_helper.dart';
import 'core/themes/app_theme.dart';
import 'core/themes/theme_manager.dart';
import 'ui/views/auth/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Initializer.init();
  AppInfo.setInfo(await PackageInfo.fromPlatform());
  AppConfiguration.developmentAPI = 'https://a6f0-116-111-100-164.ap.ngrok.io';
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
        initialRoute: isUserLoggedIn ? AppPages.initial : LoginView.route,
      ),
    );
  }
}

Future<bool> authChecked() async {
  final _secure = Get.find<SecureStorageManager>();
  final _token = await _secure.getToken();
  return  (_token ?? '').isNotEmpty;
}
