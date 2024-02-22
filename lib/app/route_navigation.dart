import 'package:flutter/material.dart';

class RouteNavigation {
  RouteNavigation._();
  static Future<void> push(BuildContext context, Widget view) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => view,
        ),
      );
}
