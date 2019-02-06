import 'package:flutter/material.dart';

//Widgets that are used in the application
Widget smallLogo(String logo){
    return Container(
            height: 25.0,
            width: 25.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.5),
              image: DecorationImage(
                image: AssetImage(logo),
                fit: BoxFit.cover
              )
            ),
          );
  }

  Widget HorizontalListItem(String imagePath, String logo){
    return Column(
      children: <Widget>[
        Stack(children: <Widget>[
          Container(
            height: 75.0,
            width: 75.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(37.5),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover
              )
            ),
          ),
          Positioned(
            top: 50.0,
            left: 50.0,
            child: smallLogo(logo)
          )
        ],
        ),
        SizedBox(height: 10,),
        Container(
          height: 30.0,
          width: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color(0xFF916144)
          ),
          child: Center(
            child: Text('Follow', style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 11.0
            ),),
          ),
        )
      ],
    );
  }