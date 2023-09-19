import 'package:deeplink_demo/driver_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(MaterialApp.router(routerConfig: router));

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => Scaffold(
        appBar: AppBar(title: const Text('Home Screen')),
        body: const Center(child: Text("Hello! Home Screen")),
      ),
      routes: [
        GoRoute(
          path: 'details',
          builder: (_, __) => Scaffold(
            appBar: AppBar(title: const Text('About Screen')),
            body: const Center(child: Text("Hello! About Screen")),
          ),
        ),
        GoRoute(
          path: 'driver',
          builder: (context, state) => DriverSreeen(goRouterState: state),
        ),
      ],
    ),
  ],
);
