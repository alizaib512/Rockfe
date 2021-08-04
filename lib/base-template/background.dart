import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rock_fe/theme/colors.dart';
import 'dart:ui' as ui;


class BackgroundWidget extends StatefulWidget {

  bool backbutton=true;
  bool topContainer=true;
  bool topLogo=true;
  bool topBigLogo=true;
  bool triangle=true;

  //bool OuterClipped=true;

  Container contentScreen=null;
  var topNavigation=null;

  BackgroundWidget({Key key,

    @required this.backbutton,
    @required this.topContainer,
    @required this.topLogo,
    @required this.triangle,

    //@required this.InnerClipped,
    @required this.contentScreen,
    @required this.topNavigation}
    ) : super(key: key);

  _BackgroundScafoldState createState() => _BackgroundScafoldState();
}

class _BackgroundScafoldState extends State<BackgroundWidget> {

    @override
    Widget build(BuildContext context){

      void _close() {
        Navigator.pop(context);
      }

      var width1= MediaQuery.of(context).size.width;
      var WIDTH= MediaQuery.of(context).size.width;
      var height1 = MediaQuery.of(context).size.height;

      Orientation orientation = MediaQuery.of(context).orientation;
      List<Widget> stack_childerns = [];


      if(widget.triangle){
        stack_childerns.add(
          Positioned(
            top: width1*0.8,
            child: CustomPaint(
              size: Size(WIDTH,(WIDTH*0.9999999999).toDouble()),
              painter: RPSCustomPainter(),
            ),
          ),
        );
      }

      if(widget.topContainer){
        stack_childerns.add(
          Positioned(
            top: 0,
            child:
            Container(
              height: 150,
              width: width1,
              color:kyellow,
            ),

          ),
        );
      }



      if(widget.backbutton){
        stack_childerns.add(
          Positioned(
              top: 40,
              left: 15,
              child: Container(
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
        ),
      );
      }
      /////////////////////////////////////// Content VIEW End ////////////////////////////////////////////
      if(widget.contentScreen != null){
        stack_childerns.add(widget.contentScreen);
      }


      /////////////////////////////////////// Top Navigation  /////////////////////////////////////////////
      if(widget.topNavigation != null){
        stack_childerns.add(widget.topNavigation);
      }
      /////////////////////////////////////// Top Navigation  //////////////////////////////////////////

      if(widget.topLogo){
        stack_childerns.add(
          Positioned(
            top: 30,
            left: MediaQuery.of(context).size.width*0.2,
            child:Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/logo.png",
                    scale: 1.4,
                  ),
                ),
              ],
            ),
          ),
        );
      }
      return Scaffold(
        backgroundColor:kblack,
        body: Stack(
          children: stack_childerns,
        ),
      );
  }
}




class RPSCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    Paint paint_0 = new Paint()
      ..color =kred
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.3528571);
    path_0.lineTo(0,size.height);
    path_0.lineTo(size.width,size.height*0.32);
    path_0.lineTo(0,-160);
    canvas.drawPath(path_0, paint_0);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


