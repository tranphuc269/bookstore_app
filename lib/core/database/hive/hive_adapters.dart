import 'package:hive/hive.dart';

import '../../../data/models/repo/repo.dart';
import '../../../data/models/sample_feature/sample_feature.dart';

class HiveAdapters {
  static const String PERSON = 'PersonAdapter';
  static const String REPO = 'RepoAdapter';

  static void register() {
    Hive.registerAdapter(PersonAdapter());
    Hive.registerAdapter(RepoAdapter());
  }
}