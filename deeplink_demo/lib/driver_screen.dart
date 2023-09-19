import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DriverSreeen extends StatelessWidget {
  GoRouterState? goRouterState;

  DriverSreeen({
    super.key,
    required this.goRouterState,
  });

  @override
  Widget build(BuildContext context) {
    var params = goRouterState?.uri.queryParametersAll.toString();
    print(params);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: Text('$params'),
      ),
    );
  }
}
