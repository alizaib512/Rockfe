 import 'package:flutter/material.dart';
import 'package:rock_fe/theme/colors.dart';

class TopNaveLogo extends StatelessWidget {
  final Function openDrawer;
  TopNaveLogo({Key key, this.openDrawer}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    var height1=MediaQuery.of(context).size.height;
    return Padding(
        padding:  EdgeInsets.only(top:height1*0.03,right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Builder(
              builder: (context) => Container(
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
                    onTap: openDrawer,
                    child: Icon(
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
              scale: 1.4,
            ),
          ],
        ),
      );

  }
}
