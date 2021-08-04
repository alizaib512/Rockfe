import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/pages/first_screen.dart';
import 'package:rock_fe/pages/second_screen.dart';
import 'package:rock_fe/theme/colors.dart';


class TabBarPage extends StatefulWidget {

  @override
  _TabBarPageState createState() => _TabBarPageState();

}

class _TabBarPageState extends State<TabBarPage> with TickerProviderStateMixin{



  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();


  TabController _tabcontroller;

  @override
  void initState(){
   super.initState();
    _tabcontroller= TabController( vsync: this, length: 2,);

  }
  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;

    List image=["assets/acadmy.jpg","assets/event.jpg","assets/menu.jpg","assets/acadmy.jpg","assets/event.jpg","assets/menu.jpg"];
    List title=["OCEAN BEAUTY","80's CONCERT","OCEAN BEAUTY",];

    return Scaffold(
      key: scaffoldKey,
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
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: height1*0.19,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 45,
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
                      Icon(Icons.filter_list_alt, size: 50, color: kyellow,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height1*0.03,),
               Padding(
                 padding:EdgeInsets.all(10),
                 child: TabBar(
                   physics: BouncingScrollPhysics(),
                      unselectedLabelColor: kwhite,
                      labelColor: kwhite,
                      controller:_tabcontroller,
                      labelStyle:TextStyle(
                        color: kwhite,
                        fontSize: 21,
                      ) ,
                     indicator: BoxDecoration(

                       color:kred,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(40),
                           bottomRight: Radius.circular(40),
                         ),
                       border: Border.all(color: kred,)
                     ),
                     tabs: [
                        Tab(text: "Events",),
                        Tab(text: "My Events",),
                      ]
                  ),
               ),

                SizedBox(height: 12,),
                Container(
                  height: height1*0.62,
                  child: TabBarView(
                     physics: BouncingScrollPhysics(),
                    controller:_tabcontroller ,
                    children:[
                      FirstScreen(),
                      SecondScreen(),
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
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:kbackbutton,
                    boxShadow: [
                      BoxShadow(
                        color: kgrey.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: Offset(1,1),
                      ),
                    ]

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










/* Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kred,
                      ),
                      child:Center(
                        child: Text("My Events",
                          style: TextStyle(
                            fontSize: 21,
                            color: kwhite,

                          ),
                        ),
                      ),
                    ),*/