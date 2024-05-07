import 'package:auto_route/auto_route.dart';
import 'package:autoroute/model/injection_container.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  setupInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(background: Colors.blueGrey),
      ),
    );
  }
}
