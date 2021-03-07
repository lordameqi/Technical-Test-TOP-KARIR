import 'package:flutterstarter/provider/HomeProvider.dart';
import 'package:flutterstarter/provider/DaftarTeamLigaInggrisProvider.dart';
import 'package:flutterstarter/services/daftarteaminggrisservice.dart';
import 'package:flutterstarter/services/ApiInterceptors.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //  init injected file
  //services
  locator.registerLazySingleton(() => ApiInterceptors());
  locator.registerLazySingleton(() => Daftarteaminggrisservice());

  // provider
  locator.registerFactory(() => HomeProvider());
  locator.registerFactory(() => DaftarTeamLigaInggrisProvider());
}
