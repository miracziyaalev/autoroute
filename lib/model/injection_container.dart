import 'package:autoroute/navigation/app_router.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupInjection() {
  print("setupInjection");
  getIt.registerSingleton<AppRouter>(AppRouter());
}
