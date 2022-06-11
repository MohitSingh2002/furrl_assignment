import 'package:flutter/material.dart';
import 'package:furrl_assignment/utils/Routes.dart';
import 'package:furrl_assignment/utils/RoutesManager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furrl Assignment',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.generateRoute,
      initialRoute: Routes.onBoarding,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
