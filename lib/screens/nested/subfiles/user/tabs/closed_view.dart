import 'package:auto_route/auto_route.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ClosedView extends StatelessWidget {
  const ClosedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(context.router.currentPath),
            ElevatedButton(
                onPressed: () {
                  context.navigateTo(const DashboardRouter(children: [
                    UserRoute(children: [OpenRoute()])
                  ]));
                },
                child: const Text("go to open"))
          ],
        ),
      ),
    );
  }
}
