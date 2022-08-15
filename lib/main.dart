import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import 'package:nectar_ui/view/authentication_pages/login_page/login_page.dart';
import 'core/theme/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Nectar UI',
      theme: MyThemes.lightTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
