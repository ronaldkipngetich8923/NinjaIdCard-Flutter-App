
import 'package:flutter/material.dart';
import 'ninja.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
  //  _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500),() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> NinjaCard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100,width: 100,color: Colors.amberAccent,),
            Container(
                   child: Text('Splash Screen',style:TextStyle(
                     fontSize: 20, fontWeight: FontWeight.bold
                   ),
                   ),
            ),
          ],
        ),
      ),
    );
  }
}
