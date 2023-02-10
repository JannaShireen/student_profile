import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:student_profile/db/model/data_model.dart';
import 'package:student_profile/screens/home/home_screen.dart';

Future <void> main () async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(StudentModelAdapter());
  
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),


    );
  }
}