import 'package:flutter/material.dart';
import 'package:my_recipe_app/components/rounded_button.dart';
import 'package:my_recipe_app/constants.dart';

class RecipeSearch extends StatefulWidget {
  @override
  _RecipeSearchState createState() => _RecipeSearchState();
}

class _RecipeSearchState extends State<RecipeSearch> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            FloatingActionButton(
              mini: true,
              onPressed: () {},
              backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: size.width * 0.3,
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
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        // height: size.height * 0.33,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/recipe.png"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 26.0,
              ),
              Text(
                'Search by Recipe',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontFamily: 'Apercu Pro',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: kInputDecoration.copyWith(
                    hintText: 'What recipe are you looking for?',
                    contentPadding: EdgeInsets.only(left: 15.0),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    fillColor: Colors.white,
                    hintStyle: kHintStyle2),
                onChanged: (value) => {print(value)},
              ),
              SizedBox(
                height: 49.0,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'My search history',
                        style: kHintStyle2,
                      ),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.arrow_forward,
                              size: 20, color: Colors.grey),
                          onPressed: () {}),
                    ],
                  ),
                  Divider(color: Colors.black)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
