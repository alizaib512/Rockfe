import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';


class MemberShip extends StatefulWidget {

  @override
  _MemberShipState createState() => _MemberShipState();

}



class _MemberShipState extends State<MemberShip> {

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
                SizedBox(height: height1*0.2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Membership",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color:kwhite,
                        fontSize: 34,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height1*0.05,),
                Container(
                  height:height1*0.25,
                  width: width1*0.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),

                    color: kyellow,
                      boxShadow: [
                      BoxShadow(
                        color: kyellow.withOpacity(0.5),
                       blurRadius: 6,
                       spreadRadius: 1,
                       offset: Offset(0,0),
                      )
                    ]
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left:width1*0.05,top: width1*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: kred,
                          ),
                          child: Icon(Icons.person,
                          size: 70,
                            color: kwhite,
                          ),
                        ),
                        SizedBox(width: width1*0.08,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/logo.png',
                              scale: 3,
                            ),
                            SizedBox(height: height1*0.02,),
                            Text("JOHN DOE",
                              style: TextStyle(
                                color: kblack,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: height1*0.01,),
                            Text("45678990001",
                              style: TextStyle(
                                color: kblack,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),


                            SizedBox(height: height1*0.04,),
                            Text(
                              "Member since May 2018",
                              style: TextStyle(
                                color: kblack,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height1*0.05,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left:width1*0.1),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 54,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                         color: kwhite,
                         width: 1,
                        )
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:7),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.wallet_membership,
                              color: kred,
                              size: 32,
                            ),
                            SizedBox(width: width1*0.04,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Add to",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color:kwhite,
                                    fontSize: 14,
                                  ),
                                ),
                               SizedBox(height: 3,),
                                Text("Apple Wallet",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color:kwhite,
                                    fontSize: 14,
                                  ),
                                ),

                              ],
                            )
                          ],
                        ),
                      ),
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




