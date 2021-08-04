import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';


class GetAccess extends StatefulWidget {

  @override
  _GetAccessState createState() => _GetAccessState();

}



class _GetAccessState extends State<GetAccess> {

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
                SizedBox(height: height1*0.025,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("80's Music Night",
                    style:TextStyle(
                        color: kwhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 25
                    ),
                  ),
                ),
                SizedBox(height: height1*0.02,),
                Container(
                  height: 170,
                  width: width1*0.92,
                  decoration: BoxDecoration(
                    color: kwhite,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top:height1*0.05),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:width1*0.06),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("80's Music Night @ Rockfe ",
                              style: TextStyle(
                                color: kblack,
                                fontSize: 18,
                              ),
                              ),
                              Text("20.00 ",
                                style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height1*0.017,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Tax:",
                                style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                ),
                              ),
                              Text("1.40 ",
                                style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height1*0.05,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("TOTAL",
                                style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                ),
                              ),
                              Text("22.40",
                                style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height1*0.03,),
                Padding(
                  padding:EdgeInsets.only(left:width1*0.08),
                  child: Row(
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: kyellow,
                        ),
                        child: Center(
                          child: Icon(Icons.add,
                          size: 32,
                            color: kblack,

                          ),
                        ),
                      ),
                      SizedBox(width: width1*0.05,),
                      Text('Add Payment Method',
                      style: TextStyle(
                        color: kwhite,
                        fontSize: 17,
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height1*0.04,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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




