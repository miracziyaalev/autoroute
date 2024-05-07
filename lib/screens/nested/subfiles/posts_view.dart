import 'package:auto_route/auto_route.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PostsView extends StatelessWidget {
  const PostsView({super.key});

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
                  context.navigateTo(const DashboardRouter(children: [
                    UserRoute(children: [ClosedRoute()])
                  ]));
                },
                child: const Text("go to closed"))
          ],
        ),
      ),
    );
  }
}
