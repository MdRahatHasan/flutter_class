import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:json_test/src/data/global_widgets/bottom_nav.dart';
import 'package:json_test/src/data/global_widgets/nave_bar.dart';
import 'package:json_test/src/services/home_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeServices()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.teal,
          ),
          debugShowCheckedModeBanner: false,
          home: const Scaffold(
            drawer: NavBar(),
            bottomNavigationBar: BottomNav(),
          ),
        );
      },
    );
  }
}
