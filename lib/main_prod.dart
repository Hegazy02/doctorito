import 'dart:developer';

import 'package:doctorito/core/di/dependency_injection.dart';
import 'package:doctorito/docdoc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  log("message prod");
  await setUpGetIt();
  runApp(const DocDocApp());
}
