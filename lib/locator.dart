import 'package:flutter_web_course/services/navigator_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setUp() {
  locator.registerLazySingleton(() => NavigationServices());
}
