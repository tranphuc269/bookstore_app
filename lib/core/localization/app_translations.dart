import 'package:get/get.dart';

import 'languages/english.dart';
import 'languages/indonesian.dart';


class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': en,
    'id': id,
  };
}