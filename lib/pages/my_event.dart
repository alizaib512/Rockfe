import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';


class Event extends StatefulWidget {

  @override
  _EventState createState() => _EventState();

}



class _EventState extends State<Event> {

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
                    Text("EVENTS",
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 52,
                    width: 260,
                    decoration: BoxDecoration(
                      color: kyellow,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(23),
                        bottomRight:  Radius.circular(23),
                      ),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Jul 14, 2021 ',
                          style:TextStyle(
                            color: kblack,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,

                          ),
                        ),
                        SizedBox(width: 8,),
                        Text('8:00 PM',
                          style:TextStyle(
                            color: kblack,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height1*0.025,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("80's Music Night",
                    style:TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 23
                    ),
                  ),
                ),
                SizedBox(height: height1*0.015,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left:20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Description",
                          style:TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.w600,
                              fontSize: 19
                          ),
                        ),
                        SizedBox(height: height1*0.01,),
                        Container(
                          width: width1*0.72,
                          child:Text("We are a full service  salon and spa,delicating to providing our clients with the absolute best ",
                            style:TextStyle(
                                color: kwhite,
                                fontSize: 14
                            ),
                          ),
                        ),
                        SizedBox(height: height1*0.015,),
                        Row(
                          children: [
                            Text('Reservation Require:',
                              style: TextStyle(
                              color: kwhite,
                                fontSize: 19,
                              fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: width1*0.07,),
                            Text('Yes ',
                              style: TextStyle(
                                color: kwhite,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height1*0.015,),
                        Text('Contact Us:',
                          style: TextStyle(
                            color: kwhite,
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: height1*0.01,),
                        Row(
                          children: [
                            Text('Hotline:',
                              style: TextStyle(
                                color: kwhite,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: width1*0.1,),
                            Text('+7888888888 ',
                              style: TextStyle(
                                color: kwhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height1*0.01,),
                        Row(
                          children: [
                            Text('Website:',
                              style: TextStyle(
                                color: kwhite,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: width1*0.1,),
                            Text('https://www.noasdfaskldfas.com',
                              style: TextStyle(
                                color: kwhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height1*0.01,),
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
                        SizedBox(height: height1*0.02  ,),
                        Padding(
                          padding: const EdgeInsets.only(bottom:18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 100,
                                //color: kred,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color:kyellow,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.share,
                                          size: 30,
                                          color: kblack,
                                     ),
                                      ),
                                    ),
                                    Text('Share',
                                      style: TextStyle(
                                        color: kwhite,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: kred,
                                  borderRadius:BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                ),
                                child: Center(
                                  child: Text('Get Access',
                                    style: TextStyle(
                                      color: kwhite,
                                      fontSize: 21,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
          padding:  EdgeInsets.only(top:height1*0.03,right: 20),
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




