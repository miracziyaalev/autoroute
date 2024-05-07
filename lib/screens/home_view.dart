import 'package:auto_route/auto_route.dart';
import 'package:autoroute/model/alert_dialog.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with WidgetsBindingObserver {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      print("resumed home view");
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.router.currentPath),
            ElevatedButton(
              onPressed: () async {
                final response = await context.router.push<bool?>(BookListRoute(book: "book ulen"));
              },
              child: const Text("go book list"),
            ),
            ElevatedButton(
                onPressed: () {
                  FilterBottomSheet().showSnackBarWithoutContext();
                },
                child: const Text("show snack"))
          ],
        ),
      ),
    );
  }
}
