import 'package:flutter/material.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';



class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  String username = "E-mail / Mobile";
  String pass = "Password";

  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;
    var WIDTH= MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:kblack,
      body: BackgroundWidget(
        topContainer: false,
        backbutton: false,
        topLogo: true,
        triangle: false,
        contentScreen:Container(
          height: height1,
          width: width1,
          child:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: width1*0.37 ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Login",
                      style: TextStyle(
                        color:kwhite,
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: height1*0.85,
                  //color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                        //top: width1*0.23,
                        top: 80,
                        child: CustomPaint(
                          size: Size(WIDTH,(WIDTH*0.9999999999).toDouble()),
                          painter: RPSCustomPainter(),
                        ),
                      ),



                      Positioned(
                        top: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:EdgeInsets.only(top:width1*0.26,),
                              child: Container(
                                margin: EdgeInsets.all(6),
                                height: 50,
                                width: width1*0.63,
                                decoration: BoxDecoration(
                                  color:kwhite,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 6,
                                      offset: Offset(0,0),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding:EdgeInsets.symmetric(horizontal: 16),
                                  child: TextFormField(
                                    onTap: () {
                                      setState(() {
                                        username = "";
                                      });
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    autofocus: false,
                                    cursorColor:Color(0xff1A1A1A),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color:Color(0xff1A1A1A),
                                      decoration: TextDecoration.none,
                                    ),
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.person,
                                        color: kblack,
                                        size: 32,
                                      ),
                                      border: InputBorder.none,
                                      hintText: username,
                                      hintStyle: TextStyle(
                                        color:kgrey,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            //////////////////////////////////////        Password          ////////////////////////////
                            Container(
                              margin: EdgeInsets.all(6),
                              height: 50,
                              width: width1*0.63,
                              decoration: BoxDecoration(
                                color:kwhite,
                                borderRadius: BorderRadius.circular(26),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 6,
                                    offset: Offset(0,0),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding:EdgeInsets.symmetric(horizontal: 16),
                                child: TextFormField(
                                  onTap: () {
                                    setState(() {
                                      pass = "";
                                    });
                                  },
                                  cursorColor:Color(0xff1A1A1A),
                                  obscureText:true,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.emailAddress,
                                  autofocus: false,

                                  style: TextStyle(
                                    fontSize: 18,
                                    color:Color(0xff1A1A1A),
                                    decoration: TextDecoration.none,
                                  ),
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.vpn_key_sharp,
                                      color: kblack,
                                      size: 27,
                                    ),
                                    border: InputBorder.none,
                                    hintText: pass,
                                    hintStyle: TextStyle(
                                      color: kgrey,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ////////////////////////////////////     Login    //////////////////////////////////
                            SizedBox(height: 5,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/home');
                              },
                              child: Container(
                                height: 50,
                                width: width1*0.63,
                                margin: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color:kred,
                                  border: Border.all(
                                    color: kwhite,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 26,
                                      color: Color(0xffaaaaaa).withOpacity(0.1),
                                    )
                                  ],
                                ),
                                child: Center(
                                  child:Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      color: kblack,
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                    child: Center(
                                      child: Icon(Icons.arrow_forward,
                                        color: kred,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 12,),
                            Padding(
                              padding:EdgeInsets.only(left:14.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Forgot your password?" ,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:kwhite,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                ],
                              ),
                            ),
                            //SizedBox(height: height1*0.17,),
                            Padding(
                              padding:  EdgeInsets.only(left:50,top: height1*0.17),
                              child: Row(
                                children: [
                                  Text(
                                    "Not a member yet?  Please" ,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color:kwhite,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 4,),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, '/signup');
                                    },
                                    child: Text(
                                      ' SIGN UP',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color:kred,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        topNavigation: null,
      ),
    );
  }
}





class RPSCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0 = new Paint()
      ..color =kred
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.3528571);
    path_0.lineTo(0,size.height);
    path_0.lineTo(size.width,size.height*0.32);
    path_0.lineTo(0,-160);
    canvas.drawPath(path_0, paint_0);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}