import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.pink[200],
            appBarTheme: AppBarTheme(color: Colors.pink[200], elevation: 0)),
        onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
