import 'package:flutter/material.dart';
import 'package:my_recipe_app/screens/login_page.dart';
import 'package:my_recipe_app/screens/prac.dart';
import 'package:my_recipe_app/screens/search_ingredient.dart';
import 'package:my_recipe_app/screens/search_recipe.dart';
import 'package:my_recipe_app/screens/signup_page.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyRecipeApp());
}

class MyRecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipeSearch(),
    );
  }
}
