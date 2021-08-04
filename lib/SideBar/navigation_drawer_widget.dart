import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rock_fe/pages/event_page.dart';
import 'package:rock_fe/pages/get_access.dart';
import 'package:rock_fe/pages/google_map.dart';
import 'package:rock_fe/pages/membership.dart';
import 'package:rock_fe/pages/music_night.dart';
import 'package:rock_fe/pages/people_page.dart';
import 'package:rock_fe/pages/user_page.dart';
import 'package:rock_fe/theme/colors.dart';
import 'package:rock_fe/pages/my_event.dart';
import 'package:rock_fe/pages/tab_bar.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;

    final name = 'Sarah Abs';
    final email = 'sarah@abs.com';
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color: kblack,
        child: Column(
          children: [
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => UserPage(

                ),
              )
              ),
            ),
            SizedBox(height: height1*0.025,),
            Align(
              alignment: Alignment.topCenter,
              child: Text("My Account",
                style: TextStyle(
                  color: kwhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: height1*0.02,),
            /////////////////////////////////////  List    ////////////////////////////////
            Container(
              //color: Colors.green,
              height: height1*0.56,
              width: width1,
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    padding: padding,
                    child: Column(
                      children: [

                        buildMenuItem(
                          text: 'Events',
                          icon: Icons.favorite_border,
                          onClicked: () => selectedItem(context, 1),
                        ),

                        buildMenuItem(
                          text: 'Coffee Shop',
                          icon: Icons.update,
                          onClicked: () => selectedItem(context, 2),
                        ),

                        buildMenuItem(
                          text: 'Book A Class',
                          icon: Icons.update,
                          onClicked: () => selectedItem(context, 3),
                        ),
                        buildMenuItem(
                          text: 'My Schedule',
                          icon: Icons.workspaces_outline,
                          onClicked: () => selectedItem(context, 4),
                        ),

                        buildMenuItem(
                          text: 'Favorite',
                          icon: Icons.favorite_border,
                          onClicked: () => selectedItem(context, 5),
                        ),
                        buildMenuItem(
                          text: 'Payment',
                          icon: Icons.update,
                          onClicked: () => selectedItem(context, 6),
                        ),
                        buildMenuItem(
                          text: 'Membership',
                          icon: Icons.update,
                          onClicked: () => selectedItem(context, 7),
                        ),

                        buildMenuItem(
                          text: 'My Invitations',
                          icon: Icons.update,
                          onClicked: () => selectedItem(context, 8),
                        ),

                        buildMenuItem(
                          text: 'Verse of the Day',
                          icon: Icons.update,
                          onClicked: () => selectedItem(context, 9),
                        ),
                        buildMenuItem(
                          text: 'Support',
                          icon: Icons.update,
                          onClicked: () => selectedItem(context, 10),
                        ),
                        buildMenuItem(
                          text: 'Settings',
                          icon: Icons.settings,
                          onClicked: () => selectedItem(context, 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height1*0.014,),
            /////////////////////////////////////      Log Out       ////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 44,
                  width: 170,
                  decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kwhite.withOpacity(0.1),
                      blurRadius: 6,
                      spreadRadius: 2,
                      offset: Offset(0,0,)
                    ),
                  ],
                  color: kred,
                    borderRadius: BorderRadius.circular(30),
              /*      borderRadius: BorderRadius.only(
                      //topRight: Radius.circular(30),
                      //bottomLeft: Radius.circular(30),

                       topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),

                    )*/
                  ),
                  child: Center(
                    child: Text("Logout",
                    style: TextStyle(
                      color: kwhite,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    String urlImage,
     String name,
     String email,
     VoidCallback onClicked,}) => InkWell(
        onTap: onClicked,
        child: Container(
          decoration: BoxDecoration(
              color: kred,
              boxShadow: [
                BoxShadow(
                  color:kwhite.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset:Offset(-4,1,),

                ),
              ]
          ),

          padding: padding.add(EdgeInsets.symmetric(vertical: 45)),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 36, backgroundImage: AssetImage("assets/girl.jpg")
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: kwhite,),
                      ),
                       SizedBox(height: 4),
                      Text(
                        email,
                        style: TextStyle(fontSize: 14,color: kwhite,),
                      ),
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: kwhite,
                    child: Icon(
                        Icons.arrow_forward,
                        color:kred),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }


  Widget buildMenuItem({
    String text,
     IconData icon,
    VoidCallback onClicked,
  }
  ) {
    final color = kwhite;
    final hoverColor = kred;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }


  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        )
        );
        break;
      case 1:
        Navigator.of(context).push(
            MaterialPageRoute(
          builder: (context) => TabBarPage(),
        )
        );
        break;
      case 2:
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Event(),
            )
        );
        break;
      case 3:
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => GetAccess(),
            )
        );
        break;
      case 4:
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MusicNight(),
            )
        );
        break;
      case 5:
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>  GoogleMap(),
            )
        );
        break;
      case 6:
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MemberShip(),
            )
        );
        break;


    }
  }
}
