import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rock_fe/SideBar/navigation_drawer_widget.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';
import '../top_nav_logo.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  List image=["assets/acadmy.jpg","assets/event.jpg","assets/menu.jpg","assets/acadmy.jpg","assets/event.jpg","assets/menu.jpg"];
  List title=["ACADEMY","EVENT","MENU","ACADEMY","EVENT","MENU"];


  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor:kblack,
      body: BackgroundWidget(
        topContainer: false,
        backbutton: false,
        topLogo: false,
        triangle: false,
        contentScreen:Container(
          height: height1,
          width: width1,
                  //color: Colors.yellow,
                  child: Container(
                    margin: EdgeInsets.only(right: 23),
                    height: height1,
                    width: width1,
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: height1*0.2),
                        physics: BouncingScrollPhysics(),
                        itemCount: image.length,
                        itemBuilder: (conext, index){
                      return Padding(
                        padding:  EdgeInsets.only(bottom:20.0,),
                        child: Container(
                          height: 155,
                          width: width1*0.88,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image[index]),
                              fit: BoxFit.cover,
                            ),
                            //color:kred,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(32),
                              topRight: Radius.circular(32),
                            ),
                            border: Border.all(
                              width: 1,
                              color: kgrey,
                            ),
                          ),
                          child: Center(
                            child: Text(title[index],
                              style: TextStyle(
                                color: kwhite,
                                fontSize: 45,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    ),
                  ),

        ),
        topNavigation:
        TopNaveLogo(
            openDrawer: () {
              scaffoldKey.currentState.openDrawer();
            }
        ),
      ),
      drawer:Drawer(
         child:NavigationDrawerWidget()
     ),
    );
  }

}







