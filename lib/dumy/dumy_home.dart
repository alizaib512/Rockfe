import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rock_fe/SideBar/navigation_drawer_widget.dart';
import 'package:rock_fe/base-template/background.dart';
import 'package:rock_fe/theme/colors.dart';
import 'package:rock_fe/top_nav_logo.dart';

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
          child:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height1*0.2,),
                Container(
                  margin: EdgeInsets.only(right: 23),
                  height: height1,
                  width: width1,
                  //color: Colors.yellow,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: image.length,
                      itemBuilder: (conext, index){
                        return Padding(
                          padding:  EdgeInsets.only(bottom:20.0),
                          child: Container(
                            height: 190,
                            width: width1*0.88,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(image[index]),
                                fit: BoxFit.cover,
                              ),
                              //color:kred,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(43),
                                topRight: Radius.circular(43),
                              ),
                              border: Border.all(
                                width: 1,
                                color: kwhite,
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





                /*     SizedBox(height: height1*0.2,),
                MyHome(width1,"assets/acadmy.jpg","ACADEMY"),
                SizedBox(height: 20,),
                MyHome(width1,"assets/event.jpg","EVENT"),
                SizedBox(height: 20),
                MyHome(width1,"assets/menu.jpg","MENU"),*/

              ],
            ),
          ),
        ),
        topNavigation:/*Padding(
          padding:  EdgeInsets.only(top:18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                scale: 1.1,
              ),
            ],
          ),
        ),*/
        /*  Padding(
          padding:  EdgeInsets.only(top:18.0,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Builder(
                builder: (context) => Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:kbackbutton,
                ),
                child: Center(
                  child: GestureDetector(
                    child: Icon(3220385 97 44 99
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
              ),
              Image.asset(
                'assets/logo.png',
                scale: 1.1,
              ),
            ],
          ),
        ),*/
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








Widget MyHome(
    var width2,
    String img,
    String title,

    ){
  return Container(
    height: 190,
    width: width2*0.92,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
      ),
      //color:kred,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(43),
        topRight: Radius.circular(43),
      ),
      border: Border.all(
        width: 1,
        color: kwhite,
      ),
    ),
    child: Center(
      child: Text(title,
        style: TextStyle(
          color: kwhite,
          fontSize: 45,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}





