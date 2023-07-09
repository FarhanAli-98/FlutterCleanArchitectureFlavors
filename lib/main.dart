import 'dart:async';
import 'package:cboj_sulfehorateb/setup.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'setup.dart';

FutureOr<void> main() async {
  await setup();
  runApp(const App());
}