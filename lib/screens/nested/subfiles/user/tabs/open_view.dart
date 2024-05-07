import 'package:auto_route/auto_route.dart';
import 'package:autoroute/model/alert_dialog.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OpenView extends StatelessWidget {
  const OpenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(context.router.currentPath),
            ElevatedButton(
                onPressed: () {
                  context.router.replace(const HomeRoute());
                },
                child: const Text("go home view")),
            ElevatedButton(
                onPressed: () {
                  context.navigateTo(const DashboardRouter(children: [PostsRoute()]));
                },
                child: const Text("go post view")),
            ElevatedButton(
                onPressed: () {
                  context.navigateTo(DashboardRouter(children: [
                    SettingsRouter(
                      children: [const SettinggRoute(), SettingsDetailRoute(id: 53)],
                    )
                  ]));
                },
                child: const Text("go settings detail")),
            ElevatedButton(
              child: const Text("show pop up"),
              onPressed: () async {
                // await showCupertinoDialog(
                //   context: context,
                //   barrierDismissible: true,
                //   builder: (context) => const CupertinoAlertDialog(
                //     title: Text('Alert'),
                //     content: Text('Please switch on Wifi/Mobile Data'),
                //   ),
                // );

                FilterBottomSheet().showFilterBottomSheet();
              },
            ),
            ElevatedButton(
              child: const Text("show snack bar up"),
              onPressed: () async {
                FilterBottomSheet().showSnackBarWithoutContext();
              },
            ),
          ],
        ),
      ),
    );
  }
}
