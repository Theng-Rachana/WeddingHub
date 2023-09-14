import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:weddinghub/repsonsive/desktop_layout.dart';
import 'package:weddinghub/repsonsive/mobile_layout.dart';
class SplashScreenwidget extends StatefulWidget {
  const SplashScreenwidget({super.key});

  @override
  State<SplashScreenwidget> createState() => _SplashScreenwidgetState();
}

class _SplashScreenwidgetState extends State<SplashScreenwidget> with SingleTickerProviderStateMixin{
  
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> DesktopPage()));
    });
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 2, 69, 124), Colors.cyan],
        begin: Alignment.topLeft,end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Lottie.network('https://lottie.host/ea474ac5-6efd-4ad1-8198-8565acb6565a/WQvicGTuAK.json'),
            Text("WEDDING HUB",style: TextStyle(decoration: TextDecoration.none,color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}