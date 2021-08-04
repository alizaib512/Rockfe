import 'package:flutter/material.dart';
import 'package:rock_fe/pages/home.dart';
import 'dart:async';
import 'package:rock_fe/pages/login_page.dart';
import 'package:rock_fe/pages/sign_up.dart';
import 'package:rock_fe/pages/testing_2.dart';
import 'package:rock_fe/pages/testing_login.dart';
import 'base-template/background.dart';
import 'package:flutter/services.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rockfe",
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes:{
        '/login':(context)=>LoginPage(),
        '/signup':(context)=> SignUp(),
        '/home':(conext)=>HomePage(),
        '/testing':(context)=>Testing(),
        '/testing2':(context)=>Testing2(),
        '/background':(context)=>BackgroundWidget(
          backbutton: true,
          //OuterClipped: true,
          //InnerClipped: true,
          //showBottomCircle: true,
          topNavigation: null,
          contentScreen: null,
        ),


      },
      home: SplashScreen(),

    );
  }
}
class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), finished);
  }

  void finished(){
    Navigator.pushNamed(context,'/login');

    //Navigator.pushNamed(context,'/testing');

    //Navigator.pushNamed(context,'/testing2');
    //Navigator.pushNamed(context,'/signup');
   // Navigator.pushNamed(context,'/background');

    debugPrint('Finished.....');
  }

  @override
  Widget build(BuildContext context) {

    var height1= MediaQuery.of(context).size.height;
    var width1= MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;
      return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Center(
                child: Image.asset(
                  "assets/logo.png",
                  scale: 1.2,
                ),
              ),
          ],
        ),
      ),
    );

  }
}
