import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:usermind/providers/user_provider.dart';
import 'package:usermind/screens/splash_screen/splash_screen.dart';
import 'package:usermind/services/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HiveService.initHive();
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff40c2e2),
        useMaterial3: false,
        appBarTheme: AppBarTheme(backgroundColor: Color(0xfff7f7f7),),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,foregroundColor: Colors.black),),
        drawerTheme: DrawerThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(20), left: Radius.circular(20),),),),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

