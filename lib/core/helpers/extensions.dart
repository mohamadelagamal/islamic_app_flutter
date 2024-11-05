import 'package:flutter/cupertino.dart';

import '../../generated/l10n.dart';

extension Navigation on BuildContext {

  /// Pushes a new route onto the navigator stack by its name.
  ///
  /// [routeName] The name of the route to push.
  Future<dynamic> pushNamed(String routeName) {
    return Navigator.of(this).pushNamed(routeName);
  }
  Future<dynamic> pushNamedWithData(String routeName, {required Map<dynamic, dynamic> arguments}) {
    return Navigator.of(this).pushNamed(routeName,arguments: arguments);
  }  /// Replaces the current route with a new route by its name.
  ///
  /// [routeName] The name of the route to replace with.
  Future<dynamic> pushReplacementNamed(String routeName) {
    return Navigator.of(this).pushReplacementNamed(routeName);
  }

  /// Pushes a new route and removes all the previous routes until the new route is reached.
  ///
  /// [routeName] The name of the route to push and remove until.
  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  /// Pops the current route off the navigator stack, effectively going back to the previous route.
  void pop() => Navigator.of(this).pop();

}

extension Localization on BuildContext {
  S get locIntl => S.of(this);
}