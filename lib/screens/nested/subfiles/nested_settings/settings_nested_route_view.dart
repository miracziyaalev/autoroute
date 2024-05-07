import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: "SettingsRouter")
class SettingsRouteView extends StatelessWidget {
  const SettingsRouteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AutoRouter(),
    );
  }
}
