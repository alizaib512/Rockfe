//import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';
//import 'package:custom_check_box/custom_check_box.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();

}

class _SignUpState extends State<SignUp> {

  String username = "E-mail / Mobile";
  String pass = "Password";

  bool value = false;
  @override
  Widget build(BuildContext context) {
    bool shouldCheck = false;

    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;
    Orientation orientation=MediaQuery.of(context).orientation;

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
                    Text("Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color:kwhite,
                        fontSize: 38,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height1*0.04,),
                //////////////////////////////////////         First Name        ///////////////////////////////////
                Container(
                  height: 52,
                  width:width1*0.88,
                  decoration: BoxDecoration(
                    border:Border.all(
                      width: 1,
                      color: kwhite,
                    ),
                    color: kblack,
                    borderRadius: BorderRadius.circular(height1*0.04),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0,0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 3),
                    child: TextField(
                      keyboardType:TextInputType.name,
                      cursorColor:kred,
                      cursorHeight: 40,
                      cursorWidth: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color:kwhite,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "First Name",
                        hintStyle: TextStyle(
                          color: kwhite,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                //////////////////////////////////////         Last Name         ///////////////////////////////////
                SizedBox(height:width1*0.04),
                Container(
                  height: 52,
                  width:width1*0.88,
                  decoration: BoxDecoration(
                    border:Border.all(
                      width: 1,
                      color: kwhite,
                    ),
                    color: kblack,
                    borderRadius: BorderRadius.circular(height1*0.04),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0,0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 3),
                    child: TextField(
                      keyboardType:TextInputType.name,
                      cursorColor:kred,
                      cursorHeight: 40,
                      cursorWidth: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color:kwhite,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Last Name",
                        hintStyle: TextStyle(
                          color: kwhite,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:width1*0.04),
                /////////////////////////////////////////       E-mail            ///////////////////////////////////////
                Container(
                  height: 52,
                  width:width1*0.88,
                  decoration: BoxDecoration(
                    border:Border.all(
                      width: 1,
                      color: kwhite,
                    ),
                    color: kblack,
                    borderRadius: BorderRadius.circular(height1*0.04),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0,0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 3),
                    child: TextField(
                      keyboardType:TextInputType.emailAddress,
                      cursorColor:kred,
                      cursorHeight: 40,
                      cursorWidth: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color:kwhite,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "E-mail",
                        hintStyle: TextStyle(
                          color: kwhite,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:width1*0.04),
                /////////////////////////////////////////     Password          ////////////////////////////////////
                Container(
                  height: 52,
                  width:width1*0.88,
                  decoration: BoxDecoration(
                    border:Border.all(
                      width: 1,
                      color: kwhite,
                    ),
                    color: kblack,
                    borderRadius: BorderRadius.circular(height1*0.04),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0,0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 3),
                    child: TextField(
                      obscureText: true,
                      keyboardType:TextInputType.emailAddress,
                      cursorColor:kred,
                      cursorHeight: 40,
                      cursorWidth: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color:kwhite,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: kwhite,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:width1*0.04),
                //////////////////////////////////////        Mobile Number      ///////////////////////////////////
                Container(
                  height: 52,
                  width:width1*0.88,
                  decoration: BoxDecoration(
                    border:Border.all(
                      width: 1,
                      color: kwhite,
                    ),
                    color: kblack,
                    borderRadius: BorderRadius.circular(height1*0.04),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0,0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 3),
                    child: TextField(
                      keyboardType:TextInputType.number,
                      cursorColor:kred,
                      cursorHeight: 40,
                      cursorWidth: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color:kwhite,
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(
                          color:kwhite,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:width1*0.05),
                Container(
                  height: 52,
                  width:width1*0.80,
                  decoration: BoxDecoration(
                    color:kred,
                    borderRadius: BorderRadius.circular(height1*0.04),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0,0),
                      ),
                    ],
                  ),
                  child: Center(
                    child:Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        color: kblack,
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_forward,
                          color: kred,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:height1*0.014,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    /*CustomCheckBox(

                      value:true,
                      shouldShowBorder: true,
                      checkedFillColor: Colors.red,
                      checkedIconColor: kwhite,
                      borderRadius: 8,
                      borderWidth: 1,
                      checkBoxSize: 25,
                      onChanged: (val) {
                        setState(() {
                          shouldCheck = val;
                        }
                        );
                      },
                    ),*/
                    SizedBox(width: 15,),
                    Row(
                      children: [
                     Text("Accept terms & Conditions",
                     style: TextStyle(
                       color: kwhite,
                       fontSize: 14,
                     ),
                     ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height:height1*0.01,),
                Padding(
                  padding: EdgeInsets.only(bottom:14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already a member ? Please",
                      style: TextStyle(
                        color: kwhite,
                        fontSize: 17,
                      ),
                      ),
                      Text("  Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kred,
                        ),
                      ),
                    ],
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




