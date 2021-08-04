import 'package:flutter/material.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';



class UserPage extends StatefulWidget {

  @override
  _UserPageState createState() => _UserPageState();

}

class _UserPageState extends State<UserPage> {

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("User Page",
                      style: TextStyle(
                        color:kwhite,
                        fontSize: 50,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
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


