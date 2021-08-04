import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';

class EventPage extends StatefulWidget {

  @override
  _EventPageState createState() => _EventPageState();

}

class _EventPageState extends State<EventPage> {

  String username = "E-mail / Mobile";
  String pass = "Password";

  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;
    Orientation orientation=MediaQuery.of(context).orientation;

    bool shouldCheck = false;
    bool shouldCheckDefault = false;
    List image=["assets/acadmy.jpg","assets/event.jpg","assets/menu.jpg","assets/acadmy.jpg","assets/event.jpg","assets/menu.jpg"];
    List title=["OCEAN BEAUTY","80's CONCERT","OCEAN BEAUTY",];

    return Scaffold(
      backgroundColor:kblack,

      floatingActionButton:GestureDetector(
        onTap: (){
          print("Float Button pressed");

        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: kwhite,
            borderRadius: BorderRadius.circular(30),
          ),
          child:Image.asset('assets/map.png',
            color: kred,
            scale:13,
          ),
        ),
      ),
      body: BackgroundWidget(
        topContainer: false,
        backbutton: false,
        topLogo: false,
        triangle: false,
        contentScreen:Container(
          height: height1,
          width: width1,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: height1*0.17,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 20),
                     height: 52,
                     width: width1*0.7,
                     decoration: BoxDecoration(
                       border: Border.all(
                         width: 1,
                         color: kwhite,
                       ),
                       borderRadius: BorderRadius.circular(14),
                     ),
                     child: Padding(
                       padding: EdgeInsets.only(top: 3,bottom: 3),
                       child: TextField(
                         showCursor: true,
                         cursorColor: kred,
                         cursorHeight: 22,
                         style: TextStyle(
                           color: kwhite,
                         ),
                         keyboardType: TextInputType.name,
                         decoration: InputDecoration(
                           hintText: "Search...",
                           focusColor: kred,
                           hintStyle: TextStyle(
                             color: kwhite,
                             fontSize: 17,
                           ),
                           border: InputBorder.none,
                           icon: Icon(
                             Icons.search,
                             color: kwhite,
                             size: 32,
                           ),
                         ),
                       ),
                     ),
                   ),
                   Icon(Icons.filter_list_alt, size: 50, color: kyellow,),
                    ],
                  ),
                ),
                SizedBox(height: height1*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    eventButton("Events"),
                    eventButton("My Events"),
                  ],
                ),
                SizedBox(height: 12,),
                Container(
                  height: height1*0.66,
                  width: width1,
                  child: ListView.builder(
                    itemCount: title.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (conext,index){
                      return  Padding(
                        padding:  EdgeInsets.only(bottom:height1*0.037,),
                        child: Container(
                            height: 170,
                            width: width1*0.92,
                            decoration: BoxDecoration(
                              color:kbackbutton,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(60),
                                topRight: Radius.circular(60),
                              ),
                            ),
                            child:Row(
                              children: [
                                Container(
                                  height: 170,
                                  width: 150,
                                  decoration: BoxDecoration(
                                     image: DecorationImage(
                                image: AssetImage('assets/girl2.jpg'),
                                fit: BoxFit.cover,
                                    ),
                                    color:kyellow,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(90),
                                      topRight: Radius.circular(90),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 14,),
                                Padding(
                                  padding:EdgeInsets.only(top:18),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(title[index],
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
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      ),
                                      SizedBox(height: 8,),
                                      Text('5:30 am- 9:00 pm',
                                        style: TextStyle(
                                          color: kwhite,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                      Row(
                                        children: [
                                          Icon(Icons.star_rate,
                                          color: kred,
                                            size: 27,
                                          ),
                                          SizedBox(width: 12,),
                                          Text('4.8',
                                            style: TextStyle(
                                              color: kwhite,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: width1*0.07,),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: kwhite,
                                  ),
                                  child: Icon(Icons.arrow_forward,
                                    size: 35,color: kblack,
                                  ),
                                ),
                              ],
                            ),
                        ),
                      );
                    }
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
                height: 45,
                width: 45,
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
                scale: 1.2,
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

Widget  eventButton(String title){
   return Container(
      height: 50,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kred,
      ),
      child:Center(
        child: Text(title,
        style: TextStyle(
          fontSize: 21,
          color: kwhite,
        ),
        ),
      ),
    );

}




