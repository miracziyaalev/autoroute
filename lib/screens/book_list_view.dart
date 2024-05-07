import 'package:auto_route/auto_route.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage<bool?>()
class BookListView extends StatefulWidget {
  const BookListView({super.key, required this.book});
  final String book;

  @override
  State<BookListView> createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> with WidgetsBindingObserver {
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
      print("resumed book list view");
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
          Text(widget.book),
          Text("BookListView - ${context.router.currentPath}"),
          ElevatedButton(
              onPressed: () {
                // context.router.maybePop<bool?>(true);
              },
              child: const Text("go home")),
          ElevatedButton(
              onPressed: () {
                context.router.replaceAll([
                  DashboardRouter(children: [
                    SettingsRouter(children: [const SettinggRoute(), SettingsDetailRoute(id: 1907)])
                  ])
                ]);
              },
              child: const Text("go posts")),
        ],
      ),
    ));
  }
}
