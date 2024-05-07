import 'package:auto_route/auto_route.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettinggView extends StatelessWidget {
  const SettinggView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.router.currentPath),
          ElevatedButton(
              onPressed: () {
                context.router.push(SettingsDetailRoute(id: 20));
              },
              child: const Text("go settings detail"))
        ],
      ),
    ));
  }
}
