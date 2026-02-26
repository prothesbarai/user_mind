import 'package:flutter/material.dart';
import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _startApp();
  }

  Future<void> _startApp() async {
    // bool hasDeepLink = await initDeepLink();
    await Future.delayed(Duration(seconds: 3));
    /*if (mounted && !hasDeepLink) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()),);
    }*/
    if(mounted){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/icon/usermind.png"),
                ),
                SizedBox(height: 30,),
                Text("User Mind",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),)
              ],
            ),
          )
      ),
    );
  }
}
