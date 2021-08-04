import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';


class GoogleMap extends StatefulWidget {

  @override
  _GoogleMapState createState() => _GoogleMapState();

}



class _GoogleMapState extends State<GoogleMap> {

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
                    Text("Google Map",
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
                  ],
                ),
                SizedBox(height: height1*0.025,),

                Padding(
                  padding:  EdgeInsets.only(bottom:height1*0.037,right: 10,top:height1*0.017 ),
                  child: Container(
                    height: 152,
                    width: width1,
                    decoration: BoxDecoration(
                      color:kbackbutton,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(55),
                        topRight: Radius.circular(55),
                      ),
                    ),
                    child:Padding(
                      padding: EdgeInsets.only(right:0),
                      child: Row(
                        children: [
                          Container(
                            height: 160,
                            width: 135,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/girl2.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(85),
                                topRight: Radius.circular(85),
                              ),
                            ),
                          ),
                          SizedBox(width: 14,),
                          Padding(
                            padding:EdgeInsets.only(top:18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("OCEAN BEAUTY",
                                  style: TextStyle(
                                    color: kwhite,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 16,),
                                Text('44 Swanson Dr.Hamden',
                                  style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text('5:30 am- 9:00 pm',
                                  style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Icon(Icons.star_rate,
                                      color: kred,
                                      size: 25,
                                    ),
                                    SizedBox(width: 12,),
                                    Text('4.8',
                                      style: TextStyle(
                                        color: kwhite,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width1*0.01,),
                          Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: kwhite,
                            ),
                            child: Icon(Icons.arrow_forward,
                              size: 32,
                              color: kblack,
                            ),
                          ),
                        ],
                      ),
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
                      ],
                    ),
                  ),
                )
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




