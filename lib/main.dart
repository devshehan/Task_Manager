import 'package:expence_tracker_app/pages/task_manager.dart';
import 'package:expence_tracker_app/server/categories.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //init hive
  await Hive.initFlutter();
  Hive.registerAdapter(CategoryAdapter());

  await Hive.openBox("expenceDatabase");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Expences());
  }
}
