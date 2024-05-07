import 'package:auto_route/auto_route.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:autoroute/screens/nested/subfiles/user/tabs/closed_view.dart';
import 'package:autoroute/screens/nested/subfiles/user/tabs/open_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [OpenRoute(), ClosedRoute()],
      builder: (context, child, tabController) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("User View"),
            bottom: TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  text: "Open",
                ),
                Tab(
                  text: "Closed",
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: const [OpenView(), ClosedView()],
          ),
        );
      },
    );
  }
}
