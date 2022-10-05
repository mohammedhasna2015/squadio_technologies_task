import 'package:get_it/get_it.dart';
import 'package:test_project/core/navigator/navigation_service.dart';

import 'preferences_utils.dart';

var getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton(() => NavigationService());
  PreferenceUtils.init();
}
