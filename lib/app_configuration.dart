

import 'core/app/app_info.dart';
import 'core/network/api_token_manager.dart';

class AppConfiguration {
  //-- Main Configuration
  static const clientToken = 'Some Client Token';
  static const tokenType = TokenType.ACCESS_TOKEN;

  //-- Production
  static const productionAPI = 'https://bf67-2a09-bac1-7a80-50-00-245-4.ap.ngrok.io';
  static const productionSocket = 'https://bf67-2a09-bac1-7a80-50-00-245-4.ap.ngrok.io';
  static const midtransProductionKey = 'Some Key';

  //-- Staging
  static const stagingAPI = 'https://bf67-2a09-bac1-7a80-50-00-245-4.ap.ngrok.io';
  static const stagingSocket = 'https://bf67-2a09-bac1-7a80-50-00-245-4.ap.ngrok.io';
  static const midtransStagingKey = 'Some Key';

  //-- Development
  static String developmentAPI = 'https://bf67-2a09-bac1-7a80-50-00-245-4.ap.ngrok.io';
  static String developmentSocket = '';
  static String midtransDevKey = 'Some Key';

  //-- App Info
  static String appName = 'Skybase';
  static String appTag = 'Flutter Getx';
  static String appVersion = AppInfo.find.get.version;
  static String buildNumber = AppInfo.find.get.buildNumber;
  static String packageName = AppInfo.find.get.packageName;
}