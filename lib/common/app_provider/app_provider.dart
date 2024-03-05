import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void navigateToPage(BuildContext context, String routeName) {
    navigatorKey.currentState?.pushNamed(routeName);
  }
}
