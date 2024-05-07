import 'package:autoroute/model/injection_container.dart';
import 'package:autoroute/navigation/app_router.dart';
import 'package:flutter/material.dart';

class FilterBottomSheet {
  void showFilterBottomSheet() {
    showModalBottomSheet(
        context: getIt<AppRouter>().navigatorKey.currentContext!,
        builder: (context) {
          return Container(
            height: 200,
            color: Colors.amber,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('This is a BottomSheet'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close BottomSheet'),
                  )
                ],
              ),
            ),
          );
        });
  }

  void showSnackBarWithoutContext() {
    ScaffoldMessenger.of(getIt<AppRouter>().navigatorKey.currentContext!).showSnackBar(
      const SnackBar(
        content: Text('This is a SnackBar'),
      ),
    );
  }
}










//getIt<AppRouter>().navigatorKey.currentContext!