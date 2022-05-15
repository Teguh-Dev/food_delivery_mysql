import 'package:flutter/material.dart';
import 'package:food_delivery_mysql/src/pages/login/login_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery Udemy',
        initialRoute: '/',
        getPages: [GetPage(name: '/', page: () => LoginPage())],
        theme: ThemeData(
            primaryColor: Colors.amber,
            colorScheme: ColorScheme(
                secondary: Colors.amberAccent,
                primary: Colors.amber,
                brightness: Brightness.light,
                onBackground: Colors.grey,
                onPrimary: Colors.grey,
                surface: Colors.grey,
                onSurface: Colors.grey,
                error: Colors.grey,
                onError: Colors.grey,
                onSecondary: Colors.grey,
                background: Colors.grey,
                primaryVariant: Colors.grey,
                secondaryVariant: Colors.grey)),
        navigatorKey: Get.key);
  }
}
