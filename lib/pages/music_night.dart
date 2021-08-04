import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';


class MusicNight extends StatefulWidget {

  @override
  _MusicNightState createState() => _MusicNightState();

}



class _MusicNightState extends State<MusicNight> {

  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:kblack,
      body: BackgroundWidget(
        topContainer: false,
        backbutton: false,
        topLogo: false,
        triangle: false,
        contentScreen:Container(
          height: height1,
          width: width1,
          child:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: height1*0.17,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("80's Music Night",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color:kwhite,
                        fontSize: 27,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height1*0.017,),
                Stack(
                  children: [
                    Container(
                      height:height1*0.29,
                      width: width1*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/e3.jpg"),
                          fit: BoxFit.cover,

                        ),
                        color: kyellow,
                      ),
                    ),
                    Positioned(
                      right:11 ,
                      child: Container(
                        height: 57,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft:Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                          color: kyellow,
                        ),
                        child:Center(
                          child: Text("\$20",
                            style: TextStyle(
                              color: kred,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height1*0.03,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left:width1*0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("JOHN DOE",
                          style:TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.w600,
                              fontSize: 19
                          ),
                        ),

                        SizedBox(height: height1*0.015,),
                        Text("Member since May 2018",
                          style:TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(height: height1*0.02,),
                        Text('Location',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: kwhite,
                          ),
                        ),
                        SizedBox(height: height1*0.015,),
                        Text('231 Glen Road Allentown',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: kwhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
        topNavigation:Padding(
          padding:  EdgeInsets.only(top:18.0,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:kbackbutton,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap:(){
                      _close();
                    },
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/logo.png',
                scale: 1.4,
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _close() {
    Navigator.pop(context);
  }
}




