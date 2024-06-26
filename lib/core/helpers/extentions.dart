import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension LoadingExtension on BuildContext {
  void showLoading() {
    showDialog(
        context: this,
        barrierDismissible: false,
        builder: (_) => const Center(child: CircularProgressIndicator()));
  }

  void hideLoading() => Navigator.of(this).pop();

  void showError(String? message) {
    showDialog(
        context: this,
        builder: (_) => AlertDialog(
              content: Text(message ?? "Something went wrong"),
            ));
  }
}
