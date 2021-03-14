import 'package:get_it/get_it.dart';
import 'package:redeflutter/data/app_model.dart';
import 'package:redeflutter/services/auth_service.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerSingleton<AppModel>(AppModel());
  locator.registerLazySingleton<AuthService>(() => AuthService());
}
