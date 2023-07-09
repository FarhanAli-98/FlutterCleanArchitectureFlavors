import 'dart:async';
import 'package:cboj_sulfehorateb/app.dart';
import 'package:cboj_sulfehorateb/config/locator.dart';
import 'package:cboj_sulfehorateb/data/source/local/hive_database.dart';
import 'package:cboj_sulfehorateb/data/source/local/shared_pref.dart';
import 'package:cboj_sulfehorateb/presentation/notifiers/connection.notifier.dart';
import 'package:cboj_sulfehorateb/utils/logger.dart';
import 'package:flutter/material.dart';

Future<void> setup() async{
  WidgetsFlutterBinding.ensureInitialized();
  Log();
  GetLocator.setupLocator();
  await SharedPref.init();
  await ConnectionNotifier().initConnectivity();
  await HiveDatabase.init();
}