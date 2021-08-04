import 'package:flutter/material.dart';
import 'package:rock_fe/theme/colors.dart';

class SecondScreen extends StatefulWidget {

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;
    List image=["assets/acadmy.jpg","assets/event.jpg","assets/menu.jpg","assets/acadmy.jpg","assets/event.jpg","assets/menu.jpg"];
    List title=["OCEAN BEAUTY","80's CONCERT","OCEAN BEAUTY","80's CONCERT" ,"OCEAN BEAUTY","80's CONCERT"];

    return
    Container(
      height: height1*0.61,
      width: width1,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: title.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (conext,index){
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: width1*.05,top: height1*0.01),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text("July 05,2021",
                          style: TextStyle(
                            color: kyellow,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: width1*0.04,),
                        Text("(TODAY)",
                          style: TextStyle(
                            color: kyellow,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(bottom:height1*0.037,right: 10,top:height1*0.017 ),
                  child: Container(
                    height: 160,
                    width: width1,
                    decoration: BoxDecoration(
                      color:kbackbutton,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child:Padding(
                      padding: EdgeInsets.only(right:0),
                      child: Row(
                        children: [
                          Container(
                            height: 160,
                            width: 135,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/girl3.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(85),
                                topRight: Radius.circular(85),
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
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text('5:30 am- 9:00 pm',
                                  style: TextStyle(
                                    color: kwhite,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Icon(Icons.star_rate,
                                      color: kred,
                                      size: 25,
                                    ),
                                    SizedBox(width: 12,),
                                    Text('4.8',
                                      style: TextStyle(
                                        color: kwhite,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width1*0.01,),
                          Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: kwhite,
                            ),
                            child: Icon(Icons.arrow_forward,
                              size: 32,
                              color: kblack,
                            ),
                          ),
                        ],
                      ),
                    ),

                  ),
                ),
              ],
            );
          }
      ),
    );
  }
}
