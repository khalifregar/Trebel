import 'package:flutter/material.dart';
import 'package:trebel/core/app/app.dart';
import 'package:trebel/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();

  runApp(const MyApp());
}
