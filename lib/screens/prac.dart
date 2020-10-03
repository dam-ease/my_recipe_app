import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_recipe_app/constants.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            //width: size.width,
            child: Image.asset("images/recipe.png", fit: BoxFit.cover),
          ),
          Positioned(
            top: size.height * 0.295,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/mask.png"), fit: BoxFit.cover),
                // color: Colors.white,
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(24.0),
                //   topRight: Radius.circular(24.0),
                // ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 75.0,
                      ),
                      Text(
                        'My search history',
                        style: kHintStyle2,
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        size: 18.0,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 47.0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Color.fromRGBO(255, 255, 255, 0.5),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(10.0),
                        shape: CircleBorder(),
                      ),
                      SizedBox(
                        width: size.width * 0.28,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: StadiumBorder(),
                        color: Color.fromRGBO(255, 255, 255, 0.7),
                        child: Text(
                          'Tap to search by ingredients',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                            fontFamily: 'Apercu Pro',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Search by Recipe',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'Apercu Pro',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.21,
            left: 20,
            right: 20,
            child: TextFormField(
              decoration: kInputDecoration.copyWith(
                  hintText: 'What recipe are you looking for?',
                  contentPadding: EdgeInsets.only(left: 15.0),
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  hintStyle: kHintStyle2),
              onChanged: (value) => {print(value)},
            ),
          ),
        ],
      ),
    );
  }
}
